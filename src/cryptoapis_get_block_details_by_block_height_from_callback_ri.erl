-module(cryptoapis_get_block_details_by_block_height_from_callback_ri).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_from_callback_ri/0]).

-type cryptoapis_get_block_details_by_block_height_from_callback_ri() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'blockchainSpecific' := cryptoapis_get_block_details_by_block_height_from_callback_ribs:cryptoapis_get_block_details_by_block_height_from_callback_ribs()
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
