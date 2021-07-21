-module(cryptoapis_delete_blockchain_event_subscription_ri).

-export([encode/1]).

-export_type([cryptoapis_delete_blockchain_event_subscription_ri/0]).

-type cryptoapis_delete_blockchain_event_subscription_ri() ::
    #{ 'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'referenceId' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'referenceId' := ReferenceId
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'referenceId' => ReferenceId
     }.
