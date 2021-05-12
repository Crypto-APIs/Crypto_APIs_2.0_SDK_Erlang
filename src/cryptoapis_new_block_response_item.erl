-module(cryptoapis_new_block_response_item).

-export([encode/1]).

-export_type([cryptoapis_new_block_response_item/0]).

-type cryptoapis_new_block_response_item() ::
    #{ 'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'isActive' := boolean(),
       'referenceId' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'isActive' := IsActive,
          'referenceId' := ReferenceId
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'isActive' => IsActive,
       'referenceId' => ReferenceId
     }.
