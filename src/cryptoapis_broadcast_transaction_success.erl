-module(cryptoapis_broadcast_transaction_success).

-export([encode/1]).

-export_type([cryptoapis_broadcast_transaction_success/0]).

-type cryptoapis_broadcast_transaction_success() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_broadcast_transaction_success_data:cryptoapis_broadcast_transaction_success_data()
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
