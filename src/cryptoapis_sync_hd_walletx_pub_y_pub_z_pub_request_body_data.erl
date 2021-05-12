-module(cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data/0]).

-type cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data() ::
    #{ 'item' := cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data_item:cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
