-module(cryptoapis_inline_response_403_96).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_96/0]).

-type cryptoapis_inline_response_403_96() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_delete_automatic_tokens_forwarding_e403:cryptoapis_delete_automatic_tokens_forwarding_e403()
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
