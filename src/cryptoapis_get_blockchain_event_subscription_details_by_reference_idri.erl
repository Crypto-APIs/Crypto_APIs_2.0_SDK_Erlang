-module(cryptoapis_get_blockchain_event_subscription_details_by_reference_idri).

-export([encode/1]).

-export_type([cryptoapis_get_blockchain_event_subscription_details_by_reference_idri/0]).

-type cryptoapis_get_blockchain_event_subscription_details_by_reference_idri() ::
    #{ 'address' => binary(),
       'blockchain' := binary(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' => integer(),
       'createdTimestamp' := integer(),
       'deactivationReasons' => list(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'network' := binary(),
       'referenceId' := binary(),
       'transactionId' => binary()
     }.

encode(#{ 'address' := Address,
          'blockchain' := Blockchain,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'createdTimestamp' := CreatedTimestamp,
          'deactivationReasons' := DeactivationReasons,
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
       'deactivationReasons' => DeactivationReasons,
       'eventType' => EventType,
       'isActive' => IsActive,
       'network' => Network,
       'referenceId' => ReferenceId,
       'transactionId' => TransactionId
     }.
