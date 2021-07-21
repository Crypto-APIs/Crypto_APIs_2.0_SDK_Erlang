-module(cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_ri).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_ri/0]).

-type cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_ri() ::
    #{ 'extendedPublicKey' := binary()
     }.

encode(#{ 'extendedPublicKey' := ExtendedPublicKey
        }) ->
    #{ 'extendedPublicKey' => ExtendedPublicKey
     }.
