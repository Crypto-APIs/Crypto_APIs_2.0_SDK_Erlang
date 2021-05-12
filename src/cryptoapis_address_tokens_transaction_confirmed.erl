-module(cryptoapis_address_tokens_transaction_confirmed).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed/0]).

-type cryptoapis_address_tokens_transaction_confirmed() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_address_tokens_transaction_confirmed_data:cryptoapis_address_tokens_transaction_confirmed_data()
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
