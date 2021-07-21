-module(cryptoapis_new_block_ri).

-export([encode/1]).

-export_type([cryptoapis_new_block_ri/0]).

-type cryptoapis_new_block_ri() ::
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
