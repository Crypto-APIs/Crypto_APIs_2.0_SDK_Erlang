-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r_data/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r_data() ::
    #{ 'item' := cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
