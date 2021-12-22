-module(cryptoapis_inline_response_409_16).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409_16/0]).

-type cryptoapis_inline_response_409_16() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_automatic_coins_forwarding_e409:cryptoapis_create_automatic_coins_forwarding_e409()
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
