-module(cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher).

-export([encode/1]).

-export_type([cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher/0]).

-type cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_data:cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_data()
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
