-module(cryptoapis_transaction_request_approval).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_approval/0]).

-type cryptoapis_transaction_request_approval() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_transaction_request_approval_data:cryptoapis_transaction_request_approval_data()
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
