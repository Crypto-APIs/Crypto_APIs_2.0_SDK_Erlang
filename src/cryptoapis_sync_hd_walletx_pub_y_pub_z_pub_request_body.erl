-module(cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body/0]).

-type cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data:cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_request_body_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
