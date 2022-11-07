## ExStacksExample

# Introduction

ExStacksExample is an example app that showcases using the [Ex Stacks](https://github.com/Geeks-Solutions/ex_stacks) library

# Setting up ExStacks

In the `config.exs` file, I've added the following node endpoint config:
```elixir
config :ex_stacks,
  node_url: "https://stacks-node-api.mainnet.stacks.co",
  node_ws_url: "wss://stacks-node-api.testnet.stacks.co/extended/v1/ws"
```
``node_ws_url`` is optional and will only be checked if you try to subscribe to / unsubscribe from a Stacks Blockchain websocket event.


# Usage
There are 3 ways in how you can take advantage of the Ex Stacks library: 

### API Calls
- These are one time synchronous requests, you can find all the available examples in `ExStacksExample.Examples`, all of these call the ``ExStacks.StacksAPI.request/2`` function. 
  - An example using the function:
  ```elixir
      StacksAPI.request("account_balances", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  ```
    - The first parameter in the request function is the named request that you would like to call, you can find the full list of available names in the ExStacks library.
    - The second is the parameters map that will be used in the request, some of these are required and will return an error if not present, others are optional.

##### Signing a transaxtion
- To sign a transaction, you'll need to include the signature of the wallet signing the transaction, and the raw transaction, as well as specifying the network identifier.
Example: 
```elixir
 StacksAPI.request(
      "sign_transaction",
      %{
        network_identifier: %{
          blockchain: "stacks",
          network: "mainnet"
        },
        unsigned_transaction:
          "00000000010400539886f96611ba3ba6cef9618f8c78118b37c5be0000000000000000000000000000006400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003020000000000051ab71a091b4b8b7661a661c620966ab6573bc2dcd3000000000007a12074657374207472616e73616374696f6e000000000000000000000000000000000000",
        signatures: [
          %{
            signing_payload: %{
              address: "string",
              account_identifier: %{
                address: "STB44HYPYAT2BB2QE513NSP81HTMYWBJP02HPGK6",
                metadata: %{}
              },
              hex_bytes: "string",
              signature_type: "ecdsa"
            },
            public_key: %{
              hex_bytes: "025c13b2fc2261956d8a4ad07d481b1a3b2cbf93a24f992249a61c3a1c4de79c51",
              curve_type: "secp256k1"
            },
            signature_type: "ecdsa",
            hex_bytes: "string"
          }
        ]
      }
    )
```

##### Submitting a signed transaction
- To submit a signed transaction, all you need to do is include the signed transaction (you can retrieve it by using the previous signing a transaction function) and the network identifier
Example:
```elixir
 StacksAPI.request("submit_signed_transaction", %{
      network_identifier: %{
        blockchain: "stacks",
        network: "mainnet"
      },
      signed_transaction:
        "0x80800000000400539886f96611ba3ba6cef9618f8c78118b37c5be000000000000000000000000000000b400017a33a91515ef48608a99c6adecd2eb258e11534a1acf66348f5678c8e2c8f83d243555ed67a0019d3500df98563ca31321c1a675b43ef79f146e322fe08df75103020000000000051a1ae3f911d8f1d46d7416bfbe4b593fd41eac19cb000000000007a12000000000000000000000000000000000000000000000000000000000000000000000"
    })
```

### Subscribing to events
- These are websocket events that you can watch and wait for messages coming through the websocket.
- ``node_ws_url`` is required to make use of this feature.
- The websocket client implemented within the ExStacks library relays ALL subscribed event messages to ALL your subscribed processes, you'll need to handle which message to process. The format of the message will be ``{:event_atom, message}``
- To add a new process that will receive messages, pass the optional ``:pid`` parameter to the subscribe function.
- An example that implements this (also found in ``ExStacksExample.Examples``):
```elixir
  StacksAPI.subscribe("block", %{pid: self()})

    receive do
      {:block, event} ->
        IO.inspect(event)
    end

    # In case you would like to stop receiving any event at all, add the pid to the unsubscribe params map
    # Else don't add it, it will only stop listening to block updates
    # But keep sending you other events if you subscribed prior
    # StacksAPI.unsubscribe("block")
    StacksAPI.unsubscribe("block", %{pid: self()})
  ```
### Unsubscribing from events
- Similar requirements to subscribing to events.
- Unsubscribe from websocket messages.
- To also remove a process while unsubscribing to events, pass the ``:pid`` optional parameter to the unsubscribe function.

