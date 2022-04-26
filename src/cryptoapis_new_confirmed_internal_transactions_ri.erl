-module(cryptoapis_new_confirmed_internal_transactions_ri).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_ri/0]).

-type cryptoapis_new_confirmed_internal_transactions_ri() ::
    #{ 'address' := binary(),
       'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'receiveCallbackOn' := integer(),
       'referenceId' := binary()
     }.

encode(#{ 'address' := Address,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'receiveCallbackOn' := ReceiveCallbackOn,
          'referenceId' := ReferenceId
        }) ->
    #{ 'address' => Address,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'receiveCallbackOn' => ReceiveCallbackOn,
       'referenceId' => ReferenceId
     }.
