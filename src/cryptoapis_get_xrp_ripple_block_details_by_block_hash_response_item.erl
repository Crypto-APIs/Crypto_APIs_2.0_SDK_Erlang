-module(cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item() ::
    #{ 'blockHash' := binary(),
       'blockHeight' := integer(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'totalCoins' := cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item_total_coins:cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item_total_coins(),
       'totalFees' := cryptoapis_get_xrp_ripple_block_details_by_block_height_response_item_total_fees:cryptoapis_get_xrp_ripple_block_details_by_block_height_response_item_total_fees(),
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
