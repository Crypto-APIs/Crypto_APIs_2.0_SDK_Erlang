-module(cryptoapis_unsupported_media_type).

-export([encode/1]).

-export_type([cryptoapis_unsupported_media_type/0]).

-type cryptoapis_unsupported_media_type() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unsupported_media_type_error:cryptoapis_unsupported_media_type_error()
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
