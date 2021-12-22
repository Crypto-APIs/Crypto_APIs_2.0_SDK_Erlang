-module(cryptoapis_inline_response_403_61).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_61/0]).

-type cryptoapis_inline_response_403_61() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_confirmed_tokens_transactions_e403:cryptoapis_new_confirmed_tokens_transactions_e403()
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