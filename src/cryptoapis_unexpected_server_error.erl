-module(cryptoapis_unexpected_server_error).

-export([encode/1]).

-export_type([cryptoapis_unexpected_server_error/0]).

-type cryptoapis_unexpected_server_error() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unexpected_server_error_error:cryptoapis_unexpected_server_error_error()
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
