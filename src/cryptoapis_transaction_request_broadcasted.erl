-module(cryptoapis_transaction_request_broadcasted).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_broadcasted/0]).

-type cryptoapis_transaction_request_broadcasted() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_transaction_request_broadcasted_data:cryptoapis_transaction_request_broadcasted_data()
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
