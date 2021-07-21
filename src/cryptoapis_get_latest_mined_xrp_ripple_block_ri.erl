-module(cryptoapis_get_latest_mined_xrp_ripple_block_ri).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_xrp_ripple_block_ri/0]).

-type cryptoapis_get_latest_mined_xrp_ripple_block_ri() ::
    #{ 'blockHash' := binary(),
       'blockHeight' := integer(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'totalCoins' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_coins(),
       'totalFees' := cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees:cryptoapis_get_latest_mined_xrp_ripple_block_ri_total_fees()
     }.

encode(#{ 'blockHash' := BlockHash,
          'blockHeight' := BlockHeight,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount,
          'totalCoins' := TotalCoins,
          'totalFees' := TotalFees
        }) ->
    #{ 'blockHash' => BlockHash,
       'blockHeight' => BlockHeight,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount,
       'totalCoins' => TotalCoins,
       'totalFees' => TotalFees
     }.
