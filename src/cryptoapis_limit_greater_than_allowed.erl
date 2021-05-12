-module(cryptoapis_limit_greater_than_allowed).

-export([encode/1]).

-export_type([cryptoapis_limit_greater_than_allowed/0]).

-type cryptoapis_limit_greater_than_allowed() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_limit_greater_than_allowed_error:cryptoapis_limit_greater_than_allowed_error()
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
