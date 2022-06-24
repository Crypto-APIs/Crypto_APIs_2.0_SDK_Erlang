-module(cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_400_response).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_400_response/0]).

-type cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_e400:cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_e400()
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
