-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_ri).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_ri/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_ri() ::
    #{ 'amountHigherThan' := integer(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'contractAddress' := binary(),
       'createdTimestamp' := integer(),
       'eventType' := binary(),
       'isActive' := boolean(),
       'referenceId' := binary()
     }.

encode(#{ 'amountHigherThan' := AmountHigherThan,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'contractAddress' := ContractAddress,
          'createdTimestamp' := CreatedTimestamp,
          'eventType' := EventType,
          'isActive' := IsActive,
          'referenceId' := ReferenceId
        }) ->
    #{ 'amountHigherThan' => AmountHigherThan,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'contractAddress' => ContractAddress,
       'createdTimestamp' => CreatedTimestamp,
       'eventType' => EventType,
       'isActive' => IsActive,
       'referenceId' => ReferenceId
     }.
