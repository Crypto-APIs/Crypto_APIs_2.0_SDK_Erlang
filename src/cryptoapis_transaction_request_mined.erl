-module(cryptoapis_transaction_request_mined).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_mined/0]).

-type cryptoapis_transaction_request_mined() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_transaction_request_mined_data:cryptoapis_transaction_request_mined_data()
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
