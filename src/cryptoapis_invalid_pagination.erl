-module(cryptoapis_invalid_pagination).

-export([encode/1]).

-export_type([cryptoapis_invalid_pagination/0]).

-type cryptoapis_invalid_pagination() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_pagination_error:cryptoapis_invalid_pagination_error()
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
