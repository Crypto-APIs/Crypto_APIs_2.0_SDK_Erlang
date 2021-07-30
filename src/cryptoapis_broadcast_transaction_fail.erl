-module(cryptoapis_broadcast_transaction_fail).

-export([encode/1]).

-export_type([cryptoapis_broadcast_transaction_fail/0]).

-type cryptoapis_broadcast_transaction_fail() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_broadcast_transaction_fail_data:cryptoapis_broadcast_transaction_fail_data()
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
