-module(cryptoapis_block_height_reached_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_rb_data_item/0]).

-type cryptoapis_block_height_reached_rb_data_item() ::
    #{ 'allowDuplicates' => boolean(),
       'blockHeightReached' := integer(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary()
     }.

encode(#{ 'allowDuplicates' := AllowDuplicates,
          'blockHeightReached' := BlockHeightReached,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl
        }) ->
    #{ 'allowDuplicates' => AllowDuplicates,
       'blockHeightReached' => BlockHeightReached,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl
     }.
