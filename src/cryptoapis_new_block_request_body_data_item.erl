-module(cryptoapis_new_block_request_body_data_item).

-export([encode/1]).

-export_type([cryptoapis_new_block_request_body_data_item/0]).

-type cryptoapis_new_block_request_body_data_item() ::
    #{ 'allowDuplicates' => boolean(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary()
     }.

encode(#{ 'allowDuplicates' := AllowDuplicates,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl
        }) ->
    #{ 'allowDuplicates' => AllowDuplicates,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl
     }.
