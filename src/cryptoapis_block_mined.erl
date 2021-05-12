-module(cryptoapis_block_mined).

-export([encode/1]).

-export_type([cryptoapis_block_mined/0]).

-type cryptoapis_block_mined() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_block_mined_data:cryptoapis_block_mined_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'referenceId' := ReferenceId,
          'idempotencyKey' := IdempotencyKey,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'referenceId' => ReferenceId,
       'idempotencyKey' => IdempotencyKey,
       'data' => Data
     }.
