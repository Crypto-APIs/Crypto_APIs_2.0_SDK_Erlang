-module(cryptoapis_activate_blockchain_event_subscription_ri).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_ri/0]).

-type cryptoapis_activate_blockchain_event_subscription_ri() ::
    #{ 'address' := binary(),
       'blockchain' := binary(),
       'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'network' := binary(),
       'referenceId' := binary(),
       'transactionId' := binary()
     }.

encode(#{ 'address' := Address,
          'blockchain' := Blockchain,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'network' := Network,
          'referenceId' := ReferenceId,
          'transactionId' := TransactionId
        }) ->
    #{ 'address' => Address,
       'blockchain' => Blockchain,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'network' => Network,
       'referenceId' => ReferenceId,
       'transactionId' => TransactionId
     }.
