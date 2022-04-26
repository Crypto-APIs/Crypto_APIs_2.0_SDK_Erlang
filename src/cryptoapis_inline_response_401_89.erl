-module(cryptoapis_inline_response_401_89).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_89/0]).

-type cryptoapis_inline_response_401_89() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_coins_forwarding_automations_e401:cryptoapis_list_coins_forwarding_automations_e401()
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
