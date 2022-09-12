-module(cryptoapis_block_height_reached_ri).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_ri/0]).

-type cryptoapis_block_height_reached_ri() ::
    #{ 'blockHeightReached' := integer(),
       'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'createdTimestamp' := integer(),
       'isActive' := boolean(),
       'referenceId' := binary()
     }.

encode(#{ 'blockHeightReached' := BlockHeightReached,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'createdTimestamp' := CreatedTimestamp,
          'isActive' := IsActive,
          'referenceId' := ReferenceId
        }) ->
    #{ 'blockHeightReached' => BlockHeightReached,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'createdTimestamp' => CreatedTimestamp,
       'isActive' => IsActive,
       'referenceId' => ReferenceId
     }.
