-module(cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r/0]).

-type cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r_data:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
