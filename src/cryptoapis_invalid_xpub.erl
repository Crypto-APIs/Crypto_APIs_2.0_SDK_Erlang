-module(cryptoapis_invalid_xpub).

-export([encode/1]).

-export_type([cryptoapis_invalid_xpub/0]).

-type cryptoapis_invalid_xpub() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_xpub_error:cryptoapis_invalid_xpub_error()
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
