-module(cryptoapis_inline_response_500).

-export([encode/1]).

-export_type([cryptoapis_inline_response_500/0]).

-type cryptoapis_inline_response_500() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unexpected_server_error:cryptoapis_unexpected_server_error()
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
