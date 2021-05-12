-module(cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_fee).

-export([encode/1]).

-export_type([cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_fee/0]).

-type cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_item_fee() ::
    #{ 'amount' := binary()
     }.

encode(#{ 'amount' := Amount
        }) ->
    #{ 'amount' => Amount
     }.
