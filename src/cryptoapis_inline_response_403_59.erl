-module(cryptoapis_inline_response_403_59).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_59/0]).

-type cryptoapis_inline_response_403_59() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_unconfirmed_tokens_transactions_e403:cryptoapis_new_unconfirmed_tokens_transactions_e403()
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
