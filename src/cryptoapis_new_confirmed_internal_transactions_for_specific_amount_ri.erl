-module(cryptoapis_new_confirmed_internal_transactions_for_specific_amount_ri).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_for_specific_amount_ri/0]).

-type cryptoapis_new_confirmed_internal_transactions_for_specific_amount_ri() ::
    #{ 'amountHigherThan' := integer(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'referenceId' := binary()
     }.

encode(#{ 'amountHigherThan' := AmountHigherThan,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'referenceId' := ReferenceId
        }) ->
    #{ 'amountHigherThan' => AmountHigherThan,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'referenceId' => ReferenceId
     }.
