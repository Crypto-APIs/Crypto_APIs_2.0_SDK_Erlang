-module(cryptoapis_insufficient_credits).

-export([encode/1]).

-export_type([cryptoapis_insufficient_credits/0]).

-type cryptoapis_insufficient_credits() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_insufficient_credits_error:cryptoapis_insufficient_credits_error()
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
