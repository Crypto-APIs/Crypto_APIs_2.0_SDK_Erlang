-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee() ::
    #{ 'address' => binary(),
       'exactAmount' => binary(),
       'priority' => binary()
     }.

encode(#{ 'address' := Address,
          'exactAmount' := ExactAmount,
          'priority' := Priority
        }) ->
    #{ 'address' => Address,
       'exactAmount' => ExactAmount,
       'priority' => Priority
     }.
