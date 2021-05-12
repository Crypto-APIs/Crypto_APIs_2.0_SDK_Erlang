-module(cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_item).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_item/0]).

-type cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_item() ::
    #{ 'address' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'referenceId' := binary()
     }.

encode(#{ 'address' := Address,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'referenceId' := ReferenceId
        }) ->
    #{ 'address' => Address,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'referenceId' => ReferenceId
     }.
