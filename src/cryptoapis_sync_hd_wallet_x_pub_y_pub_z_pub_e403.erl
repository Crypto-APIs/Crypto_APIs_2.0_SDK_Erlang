-module(cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e403).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e403/0]).

-type cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e403() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
