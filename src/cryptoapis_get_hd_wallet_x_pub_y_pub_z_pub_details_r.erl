-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r_data:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r_data()
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
