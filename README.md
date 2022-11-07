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

