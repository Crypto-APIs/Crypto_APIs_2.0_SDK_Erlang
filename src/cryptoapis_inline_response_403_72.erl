-module(cryptoapis_inline_response_403_72).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_72/0]).

-type cryptoapis_inline_response_403_72() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_block_details_by_block_height_from_callback_e403:cryptoapis_get_block_details_by_block_height_from_callback_e403()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
