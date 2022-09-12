-module(cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r_data).

-export([encode/1]).

-export_type([cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r_data/0]).

-type cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r_data() ::
    #{ 'item' := cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_ri:cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
