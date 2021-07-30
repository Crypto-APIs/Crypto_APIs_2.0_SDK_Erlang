-module(cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item_recipients).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item_recipients/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item_recipients() ::
    #{ 'address' := binary(),
       'amount' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount
        }) ->
    #{ 'address' => Address,
       'amount' => Amount
     }.
