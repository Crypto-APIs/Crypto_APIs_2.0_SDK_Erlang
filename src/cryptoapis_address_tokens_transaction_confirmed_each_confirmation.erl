-module(cryptoapis_address_tokens_transaction_confirmed_each_confirmation).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_each_confirmation/0]).

-type cryptoapis_address_tokens_transaction_confirmed_each_confirmation() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data:cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data()
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
