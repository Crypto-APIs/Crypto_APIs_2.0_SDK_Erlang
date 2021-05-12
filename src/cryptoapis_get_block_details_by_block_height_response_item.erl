-module(cryptoapis_get_block_details_by_block_height_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_response_item/0]).

-type cryptoapis_get_block_details_by_block_height_response_item() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'blockchainSpecific' := cryptoapis_get_block_details_by_block_height_response_item_blockchain_specific:cryptoapis_get_block_details_by_block_height_response_item_blockchain_specific()
     }.

encode(#{ 'hash' := Hash,
          'height' := Height,
          'nextBlockHash' := NextBlockHash,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'hash' => Hash,
       'height' => Height,
       'nextBlockHash' => NextBlockHash,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount,
       'blockchainSpecific' => BlockchainSpecific
     }.
