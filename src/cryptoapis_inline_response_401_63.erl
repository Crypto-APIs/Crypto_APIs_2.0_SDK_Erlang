-module(cryptoapis_inline_response_401_63).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_63/0]).

-type cryptoapis_inline_response_401_63() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_e401:cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_e401()
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
