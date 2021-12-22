-module(cryptoapis_inline_response_402).

-export([encode/1]).

-export_type([cryptoapis_inline_response_402/0]).

-type cryptoapis_inline_response_402() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_insufficient_credits:cryptoapis_insufficient_credits()
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
