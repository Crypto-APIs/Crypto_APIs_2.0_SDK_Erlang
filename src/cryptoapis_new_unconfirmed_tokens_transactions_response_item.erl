-module(cryptoapis_new_unconfirmed_tokens_transactions_response_item).

-export([encode/1]).

-export_type([cryptoapis_new_unconfirmed_tokens_transactions_response_item/0]).

-type cryptoapis_new_unconfirmed_tokens_transactions_response_item() ::
    #{ 'address' := binary(),
       'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'referenceId' := binary(),
       'transactionId' := binary()
     }.

encode(#{ 'address' := Address,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'referenceId' := ReferenceId,
          'transactionId' := TransactionId
        }) ->
    #{ 'address' => Address,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'referenceId' => ReferenceId,
       'transactionId' => TransactionId
     }.
