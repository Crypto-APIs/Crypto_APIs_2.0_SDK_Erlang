-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_fee).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_fee/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_ri_fee() ::
    #{ 'amount' := binary()
     }.

encode(#{ 'amount' := Amount
        }) ->
    #{ 'amount' => Amount
     }.
