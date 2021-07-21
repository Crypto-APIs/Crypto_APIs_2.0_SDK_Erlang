-module(cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_rb_data).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_rb_data/0]).

-type cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_rb_data() ::
    #{ 'item' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_rb_data_item:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
