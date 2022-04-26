-module(cryptoapis_inline_response_401_72).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_72/0]).

-type cryptoapis_inline_response_401_72() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_unconfirmed_tokens_transactions_e401:cryptoapis_new_unconfirmed_tokens_transactions_e401()
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
