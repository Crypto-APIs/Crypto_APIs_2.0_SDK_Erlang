-module(cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_401_response).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_401_response/0]).

-type cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_401_response() ::
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
