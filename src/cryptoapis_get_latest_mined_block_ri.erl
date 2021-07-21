-module(cryptoapis_get_latest_mined_block_ri).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_block_ri/0]).

-type cryptoapis_get_latest_mined_block_ri() ::
    #{ 'hash' := binary(),
       'height' := integer(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer(),
       'blockchainSpecific' := cryptoapis_get_latest_mined_block_ribs:cryptoapis_get_latest_mined_block_ribs()
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
