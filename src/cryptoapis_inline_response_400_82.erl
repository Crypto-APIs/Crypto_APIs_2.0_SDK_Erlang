-module(cryptoapis_inline_response_400_82).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_82/0]).

-type cryptoapis_inline_response_400_82() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_delete_automatic_tokens_forwarding_e400:cryptoapis_delete_automatic_tokens_forwarding_e400()
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
