-module(cryptoapis_inline_response_429).

-export([encode/1]).

-export_type([cryptoapis_inline_response_429/0]).

-type cryptoapis_inline_response_429() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_request_limit_reached:cryptoapis_request_limit_reached()
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
