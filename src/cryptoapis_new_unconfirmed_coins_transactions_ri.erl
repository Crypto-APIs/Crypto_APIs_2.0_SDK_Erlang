-module(cryptoapis_new_unconfirmed_coins_transactions_ri).

-export([encode/1]).

-export_type([cryptoapis_new_unconfirmed_coins_transactions_ri/0]).

-type cryptoapis_new_unconfirmed_coins_transactions_ri() ::
    #{ 'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'referenceId' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'referenceId' := ReferenceId
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'referenceId' => ReferenceId
     }.
