-module(cryptoapis_new_confirmed_coins_transactions_request_body).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_coins_transactions_request_body/0]).

-type cryptoapis_new_confirmed_coins_transactions_request_body() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_new_confirmed_coins_transactions_request_body_data:cryptoapis_new_confirmed_coins_transactions_request_body_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
