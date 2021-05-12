-module(cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_data).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_data/0]).

-type cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_data() ::
    #{ 'item' := cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_item:cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
