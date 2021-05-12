-module(cryptoapis_address_coins_transaction_unconfirmed).

-export([encode/1]).

-export_type([cryptoapis_address_coins_transaction_unconfirmed/0]).

-type cryptoapis_address_coins_transaction_unconfirmed() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_address_coins_transaction_unconfirmed_data:cryptoapis_address_coins_transaction_unconfirmed_data()
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
