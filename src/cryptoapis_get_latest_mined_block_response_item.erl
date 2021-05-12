-module(cryptoapis_get_latest_mined_block_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_block_response_item/0]).

-type cryptoapis_get_latest_mined_block_response_item() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'blockchainSpecific' := cryptoapis_get_latest_mined_block_response_item_blockchain_specific:cryptoapis_get_latest_mined_block_response_item_blockchain_specific()
     }.

encode(#{ 'hash' := Hash,
          'height' := Height,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'hash' => Hash,
       'height' => Height,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount,
       'blockchainSpecific' => BlockchainSpecific
     }.
