-module(cryptoapis_get_block_details_by_block_height_ri).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_ri/0]).

-type cryptoapis_get_block_details_by_block_height_ri() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'nextBlockHash' := binary(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'blockchainSpecific' := cryptoapis_get_block_details_by_block_height_ribs:cryptoapis_get_block_details_by_block_height_ribs()
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
