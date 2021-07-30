-module(cryptoapis_transaction_request_fail).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_fail/0]).

-type cryptoapis_transaction_request_fail() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_transaction_request_fail_data:cryptoapis_transaction_request_fail_data()
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
