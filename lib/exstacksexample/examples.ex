defmodule ExStacksExample.Examples do
  alias ExStacks.StacksAPI

  def get_account_balances do
    StacksAPI.request("account_balances", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_stx_balances do
    StacksAPI.request("account_stx_balance", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_transactions do
    StacksAPI.request("account_transactions", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_transactions_with_transfers do
    StacksAPI.request("account_transactions_with_transfers", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_transaction_by_id do
    StacksAPI.request("account_transaction_by_id", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0",
      tx_id: "0x7887ce39baa6037cb571e0b29b1b267d08477587bb71e99d0de733258e8af72d"
    })
  end

  def get_account_nonces do
    StacksAPI.request("account_nonces", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_stx_inbound do
    StacksAPI.request("account_stx_inbound", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_assets do
    StacksAPI.request("account_assets", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_account_information do
    StacksAPI.request("account_information", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_recent_blocks do
    StacksAPI.request("recent_blocks", %{})
  end

  def get_block_by_hash do
    StacksAPI.request("block_by_hash", %{
      hash: "0xe32b8c764f8c9dfd745506f32fb0988b02aa8219b46ce9e8e1295e0ecf494be2"
    })
  end

  def get_block_by_height do
    StacksAPI.request("block_by_height", %{
      height: 81132
    })
  end

  def get_block_by_burnchain_height do
    StacksAPI.request("block_by_burnchain_height", %{
      burn_block_height: 760_526
    })
  end

  def get_block_by_burnchain_hash do
    StacksAPI.request("block_by_burnchain_hash", %{
      burn_block_hash: "0x0000000000000000000762f8acee42a6faad461b670a3097e4432f171ec21e28"
    })
  end

  def get_estimated_stx_transfer_transaction_fee do
    StacksAPI.request("estimated_stx_transfer_transaction_fee", %{})
  end

  def get_estimated_transaction_fee do
    StacksAPI.request("estimated_transaction_fee", %{
      estimated_len: 350,
      transaction_payload:
        "021af942874ce525e87f21bbe8c121b12fac831d02f4086765742d696e666f0b7570646174652d696e666f00000000"
    })
  end

  def get_fts_metadata do
    StacksAPI.request("fts_metadata", %{})
  end

  def get_ft_by_contract_id_metadata do
    StacksAPI.request("ft_by_contract_id_metadata", %{
      contract_id: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275.tokensoft-v2-token-v1djbh5ykbl"
    })
  end

  def get_core_api_info do
    StacksAPI.request("core_api_info", %{})
  end

  def get_api_status do
    StacksAPI.request("api_status", %{})
  end

  def get_network_block_time do
    StacksAPI.request("network_block_time", %{})
  end

  def get_proof_of_transfer_details do
    StacksAPI.request("proof_of_transfer_details", %{})
  end

  def get_given_network_block_time do
    StacksAPI.request("given_network_block_time", %{network: "mainnet"})
  end

  def get_stx_supply do
    StacksAPI.request("stx_supply", %{})
  end

  def get_legacy_stx_supply do
    StacksAPI.request("legacy_stx_supply", %{})
  end

  def get_total_stx_supply_plain_text do
    StacksAPI.request("total_stx_supply_plain_text", %{})
  end

  def get_circulating_stx_supply_plain_text do
    StacksAPI.request("circulating_stx_supply_plain_text", %{})
  end

  def get_recent_microblocks do
    StacksAPI.request("recent_microblocks", %{})
  end

  def get_microblock do
    StacksAPI.request("estimated_stx_transfer_transaction_fee", %{
      hash: "0xf765539e26399e8252dcf6932b7504eb1885978f9cb0da452da042fab709b95e"
    })
  end

  def get_transactions_in_unanchored_microblocks do
    StacksAPI.request("transactions_in_unanchored_microblocks", %{})
  end

  def get_namespace_price do
    StacksAPI.request("namespace_price", %{
      tld: "eweev"
    })
  end

  def get_name_price do
    StacksAPI.request("name_price", %{
      name: "eweev.stx"
    })
  end

  def get_namespaces do
    StacksAPI.request("namespaces", %{})
  end

  def get_namespace_names do
    StacksAPI.request("namespace_names", %{
      tld: "stx"
    })
  end

  def get_names do
    StacksAPI.request("names", %{})
  end

  def get_name_details do
    StacksAPI.request("name_details", %{
      name: "000000000000000000000000000000000000000000000000.btc"
    })
  end

  def get_name_subdomains do
    StacksAPI.request("name_subdomains", %{
      name: "000000000000000000000000000000000000000000000000.btc"
    })
  end

  def get_name_zonefile do
    StacksAPI.request("name_zonefile", %{
      name: "000000000000000000000000000000000000000000000000.btc"
    })
  end

  def get_name_historical_zonefile do
    StacksAPI.request("name_historical_zonefile", %{
      name: "000000000000000000000000000000000000000000000000.btc",
      zonefile_hash: "7dce37c75e9bbef1ea297e3aac17cd9237c50ab4"
    })
  end

  def get_names_owned_by_address do
    StacksAPI.request("names_owned_by_address", %{
      blockchain: "stacks",
      address: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_nft_holdings do
    StacksAPI.request("nft_holdings", %{
      principal: "SP31DA6FTSJX2WGTZ69SFY11BH51NZMB0ZW97B5P0"
    })
  end

  def get_nft_history do
    StacksAPI.request("nft_history", %{
      asset_identifier:
        "SP2BE8TZATXEVPGZ8HAFZYE5GKZ02X0YDKAN7ZTGW.okcoin-airdrop::okcoin-airdrop",
      value: "0x0100000000000000000000000000000bd4"
    })
  end

  def get_nft_mints do
    StacksAPI.request("nft_mints", %{
      asset_identifier: "SP2BE8TZATXEVPGZ8HAFZYE5GKZ02X0YDKAN7ZTGW.okcoin-airdrop::okcoin-airdrop"
    })
  end

  def get_nfts_metadata do
    StacksAPI.request("nfts_metadata", %{})
  end

  def get_nft_by_contract_id_metadata do
    StacksAPI.request("nft_by_contract_id_metadata", %{
      contract_id: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275.tokensoft-v2-token-v1djbh5ykbl"
    })
  end

  def get_contract_info do
    StacksAPI.request("contract_info", %{
      contract_id: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275.tokensoft-v2-token-v1djbh5ykbl"
    })
  end

  def get_contracts_by_trait do
    StacksAPI.request("contracts_by_trait", %{
      trait_abi: "{\"name\":\"account\",\"type\":\"principal\"}"
    })
  end

  def get_contract_events do
    StacksAPI.request("contract_events", %{
      contract_id: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275.tokensoft-v2-token-v1djbh5ykbl"
    })
  end

  def get_contract_interface do
    StacksAPI.request("contract_interface", %{
      contract_address: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275",
      contract_name: "tokensoft-v2-token-v1djbh5ykbl"
    })
  end

  def get_specific_data_map_in_contract do
    StacksAPI.request("specific_data_map_in_contract", %{
      contract_address: "SP1Z92MPDQEWZXW36VX71Q25HKF5K2EPCJ304F275",
      contract_name: "tokensoft-v2-token-v1djbh5ykbl",
      map_name: "blacklist"
    })
  end

  def get_contract_source do
    StacksAPI.request("contract_source", %{
      contract_address: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11",
      contract_name: "newyorkcitycoin-core-v2"
    })
  end

  def get_read_only_function do
    StacksAPI.request("read_only_function", %{
      contract_address: "SP187Y7NRSG3T9Z9WTSWNEN3XRV1YSJWS81C7JKV7",
      contract_name: "imaginary-friends-zebras",
      function_name: "get-token-uri",
      sender: "STM9EQRAB3QAKF8NKTP15WJT7VHH4EWG3DJB4W29",
      arguments: ["0x0100000000000000000000000000000095"]
    })
  end

  # I'm here, issue with post requests except read only
  def get_recent_transactions do
    StacksAPI.request("recent_transactions", %{})
  end

  def get_mempool_transactions do
    StacksAPI.request("mempool_transactions", %{})
  end

  def get_dropped_mempool_transactions do
    StacksAPI.request("dropped_mempool_transactions", %{})
  end

  def get_details_for_transactions do
    StacksAPI.request("details_for_transactions", %{
      tx_id: "0x7887ce39baa6037cb571e0b29b1b267d08477587bb71e99d0de733258e8af72d"
    })
  end

  def get_transaction do
    StacksAPI.request("transaction", %{
      tx_id: "0x7887ce39baa6037cb571e0b29b1b267d08477587bb71e99d0de733258e8af72d"
    })
  end

  def get_raw_transaction do
    StacksAPI.request("raw_transaction", %{
      tx_id: "0x7887ce39baa6037cb571e0b29b1b267d08477587bb71e99d0de733258e8af72d"
    })
  end

  def get_transactions_by_block_hash do
    StacksAPI.request("transactions_by_block_hash", %{
      block_hash: "0xe32b8c764f8c9dfd745506f32fb0988b02aa8219b46ce9e8e1295e0ecf494be2"
    })
  end

  def get_transactions_by_block_height do
    StacksAPI.request("transactions_by_block_height", %{
      block_height: 81132
    })
  end

  def get_transactions_by_address do
    StacksAPI.request("transactions_by_address", %{
      address: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"
    })
  end

  def get_transaction_events do
    StacksAPI.request("transaction_events", %{
      tx_id: "0x29e25515652dad41ef675bd0670964e3d537b80ec19cf6ca6f1dd65d5bc642c5"
    })
  end

  def sign_transaction do
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
  end

  def submit_signed_transaction do
    StacksAPI.request("submit_signed_transaction", %{
      network_identifier: %{
        blockchain: "stacks",
        network: "mainnet"
      },
      signed_transaction:
        "0x80800000000400539886f96611ba3ba6cef9618f8c78118b37c5be000000000000000000000000000000b400017a33a91515ef48608a99c6adecd2eb258e11534a1acf66348f5678c8e2c8f83d243555ed67a0019d3500df98563ca31321c1a675b43ef79f146e322fe08df75103020000000000051a1ae3f911d8f1d46d7416bfbe4b593fd41eac19cb000000000007a12000000000000000000000000000000000000000000000000000000000000000000000"
    })
  end

  def get_available_networks do
    StacksAPI.request("available_networks", %{})
  end

  def get_network_options do
    StacksAPI.request("network_options", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"}
    })
  end

  def get_network_status do
    StacksAPI.request("network_status", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"}
    })
  end

  def get_account_balance do
    StacksAPI.request("account_balance", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      account_identifier: %{"address" => "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"}
    })
  end

  def get_block do
    StacksAPI.request("block", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      block_identifier: %{
        "hash" => "0x65015a563b56214be6b6e45ae190652e9af143c2055facae2c2147242d11bec2"
      }
    })
  end

  def get_block_transaction do
    StacksAPI.request("block_transaction", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      block_identifier: %{
        "hash" => "0x65015a563b56214be6b6e45ae190652e9af143c2055facae2c2147242d11bec2"
      },
      transaction_identifier: %{
        "hash" => "0x4a8e5f924595af86739d201611ca36ea400cce10c7b88e84b11b937e181a5b5d"
      }
    })
  end

  def get_mempool_transactions_rosetta do
    StacksAPI.request("mempool_transactions_rosetta", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"}
    })
  end

  def get_mempool_transaction do
    StacksAPI.request("mempool_transaction", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      transaction_identifier: %{
        "hash" => "0x4a8e5f924595af86739d201611ca36ea400cce10c7b88e84b11b937e181a5b5d"
      }
    })
  end

  def get_signed_transaction_hash do
    StacksAPI.request("signed_transaction_hash", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      signed_transaction:
        "0x80800000000400539886f96611ba3ba6cef9618f8c78118b37c5be000000000000000000000000000000b400017a33a91515ef48608a99c6adecd2eb258e11534a1acf66348f5678c8e2c8f83d243555ed67a0019d3500df98563ca31321c1a675b43ef79f146e322fe08df75103020000000000051a1ae3f911d8f1d46d7416bfbe4b593fd41eac19cb000000000007a12000000000000000000000000000000000000000000000000000000000000000000000"
    })
  end

  def get_transaction_construction_metadata do
    StacksAPI.request("transaction_construction_metadata", %{
      network_identifier: %{"blockchain" => "stacks", network: "mainnet"},
      options: %{
        sender_address: "SP3Y0BBCCCBFAMYCYN3F35CX9MH1J2GATP53JX3FA",
        type: "stack_stx",
        status: "success",
        token_transfer_recipient_address: "string",
        amount: "500000",
        symbol: "STX",
        decimals: 6,
        gas_limit: 0,
        gas_price: 0,
        suggested_fee_multiplier: 0,
        max_fee: "12380898",
        fee: "fee",
        size: 260,
        memo: "test.memo",
        number_of_cycles: 0,
        contract_address: "SP112T7BYCNEDCZ9TCYXCXFNJG9WXX5Q5SG6DSBAM",
        contract_name: "STX transfer",
        burn_block_height: 0,
        delegate_to:
          "cb3df38053d132895220b9ce471f6b676db5b9bf0b4adefb55f2118ece2478df01.STB44HYPYAT2BB2QE513NSP81HTMYWBJP02HPGK6",
        pox_addr: "1Xik14zRm29UsyS6DjhYg4iZeZqsDa8D3"
      }
    })
  end

  def search do
    StacksAPI.request("search", %{
      id: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"
    })
  end

  def get_recent_reward_slot_holders do
    StacksAPI.request("recent_reward_slot_holders", %{})
  end

  def get_address_recent_reward_slot_holders do
    StacksAPI.request("address_recent_reward_slot_holders", %{
      address: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"
    })
  end

  def get_recent_reward_recipients do
    StacksAPI.request("recent_reward_recipients", %{})
  end

  def get_recipient_recent_rewards do
    StacksAPI.request("recipient_recent_rewards", %{
      address: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"
    })
  end

  def get_recipient_total_rewards do
    StacksAPI.request("recipient_total_rewards", %{
      address: "SPSCWDV3RKV5ZRN1FQD84YE1NQFEDJ9R1F4DYQ11"
    })
  end

  def subscribe_block_updates do
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
  end

  def subscribe_microblock_updates do
    StacksAPI.subscribe("microblock", %{pid: self()})

    receive do
      {:microblock, event} ->
        IO.inspect(event)
    end
  end

  def subscribe_mempool_updates do
    StacksAPI.subscribe("mempool", %{pid: self()})

    receive do
      {:mempool, event} ->
        IO.inspect(event)
    end
  end

  def unsubscribe_block_updates(pid) do
    StacksAPI.unsubscribe("block", %{pid: pid})
  end
end
