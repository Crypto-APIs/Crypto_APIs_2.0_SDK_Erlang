-module(cryptoapis_inline_response_400_45).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_45/0]).

-type cryptoapis_inline_response_400_45() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_latest_mined_blocks_e400:cryptoapis_list_latest_mined_blocks_e400()
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
