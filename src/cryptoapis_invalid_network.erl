-module(cryptoapis_invalid_network).

-export([encode/1]).

-export_type([cryptoapis_invalid_network/0]).

-type cryptoapis_invalid_network() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_network_error:cryptoapis_invalid_network_error()
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
