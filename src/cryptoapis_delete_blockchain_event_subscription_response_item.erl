-module(cryptoapis_delete_blockchain_event_subscription_response_item).

-export([encode/1]).

-export_type([cryptoapis_delete_blockchain_event_subscription_response_item/0]).

-type cryptoapis_delete_blockchain_event_subscription_response_item() ::
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
