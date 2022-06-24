-module(cryptoapis_sync_hd_wallet__x_pub__y_pub__z_pub__422_response).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_wallet__x_pub__y_pub__z_pub__422_response/0]).

-type cryptoapis_sync_hd_wallet__x_pub__y_pub__z_pub__422_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e422:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e422()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
