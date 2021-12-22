-module(cryptoapis_inline_response_415).

-export([encode/1]).

-export_type([cryptoapis_inline_response_415/0]).

-type cryptoapis_inline_response_415() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unsupported_media_type:cryptoapis_unsupported_media_type()
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
