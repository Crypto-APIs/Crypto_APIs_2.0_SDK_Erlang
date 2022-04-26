-module(cryptoapis_inline_response_403_92).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_92/0]).

-type cryptoapis_inline_response_403_92() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_tokens_forwarding_automations_e403:cryptoapis_list_tokens_forwarding_automations_e403()
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
