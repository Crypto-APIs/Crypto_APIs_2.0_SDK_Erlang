-module(cryptoapis_get_xrp_ripple_block_details_by_block_height_ri).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_height_ri/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_height_ri() ::
    #{ 'blockHash' := binary(),
       'blockHeight' := integer(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'totalCoins' := cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_coins:cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_coins(),
       'totalFees' := cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_fees:cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_fees(),
       'transactionsCount' := integer()
     }.

encode(#{ 'blockHash' := BlockHash,
          'blockHeight' := BlockHeight,
          'nextBlockHash' := NextBlockHash,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'totalCoins' := TotalCoins,
          'totalFees' := TotalFees,
          'transactionsCount' := TransactionsCount
        }) ->
    #{ 'blockHash' => BlockHash,
       'blockHeight' => BlockHeight,
       'nextBlockHash' => NextBlockHash,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'totalCoins' => TotalCoins,
       'totalFees' => TotalFees,
       'transactionsCount' => TransactionsCount
     }.
