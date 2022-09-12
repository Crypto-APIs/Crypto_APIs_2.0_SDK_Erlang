-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data:cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
