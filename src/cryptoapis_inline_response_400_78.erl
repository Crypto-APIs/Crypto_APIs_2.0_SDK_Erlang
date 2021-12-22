-module(cryptoapis_inline_response_400_78).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_78/0]).

-type cryptoapis_inline_response_400_78() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_tokens_forwarding_automations_e400:cryptoapis_list_tokens_forwarding_automations_e400()
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
