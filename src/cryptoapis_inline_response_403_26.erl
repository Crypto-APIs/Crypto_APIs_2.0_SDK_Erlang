-module(cryptoapis_inline_response_403_26).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_26/0]).

-type cryptoapis_inline_response_403_26() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_block_details_by_block_height_e403:cryptoapis_get_block_details_by_block_height_e403()
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
