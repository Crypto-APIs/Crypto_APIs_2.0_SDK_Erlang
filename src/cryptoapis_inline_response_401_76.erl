-module(cryptoapis_inline_response_401_76).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_76/0]).

-type cryptoapis_inline_response_401_76() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_automatic_coins_forwarding_e401:cryptoapis_create_automatic_coins_forwarding_e401()
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
