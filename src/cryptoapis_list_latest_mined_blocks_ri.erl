-module(cryptoapis_list_latest_mined_blocks_ri).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ri/0]).

-type cryptoapis_list_latest_mined_blocks_ri() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'totalCoins' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins(),
       'totalFees' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees(),
       'blockchainSpecific' := cryptoapis_list_latest_mined_blocks_ribs:cryptoapis_list_latest_mined_blocks_ribs()
     }.

encode(#{ 'hash' := Hash,
          'height' := Height,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount,
          'totalCoins' := TotalCoins,
          'totalFees' := TotalFees,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'hash' => Hash,
       'height' => Height,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount,
       'totalCoins' => TotalCoins,
       'totalFees' => TotalFees,
       'blockchainSpecific' => BlockchainSpecific
     }.
