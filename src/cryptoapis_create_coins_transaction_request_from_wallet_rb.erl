-module(cryptoapis_create_coins_transaction_request_from_wallet_rb).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_rb/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_create_coins_transaction_request_from_wallet_rb_data:cryptoapis_create_coins_transaction_request_from_wallet_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.