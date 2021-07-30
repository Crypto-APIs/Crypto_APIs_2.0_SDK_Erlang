-module(cryptoapis_transaction_request_rejection).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_rejection/0]).

-type cryptoapis_transaction_request_rejection() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_transaction_request_rejection_data:cryptoapis_transaction_request_rejection_data()
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
