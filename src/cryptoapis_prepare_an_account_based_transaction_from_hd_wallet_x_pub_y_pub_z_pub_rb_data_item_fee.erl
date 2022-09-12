-module(cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee).

-export([encode/1]).

-export_type([cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee/0]).

-type cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee() ::
    #{ 'exactAmount' => binary(),
       'priority' => binary()
     }.

encode(#{ 'exactAmount' := ExactAmount,
          'priority' := Priority
        }) ->
    #{ 'exactAmount' => ExactAmount,
       'priority' => Priority
     }.
