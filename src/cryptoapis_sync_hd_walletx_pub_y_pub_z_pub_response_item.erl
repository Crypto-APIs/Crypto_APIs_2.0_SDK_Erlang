-module(cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_item).

-export([encode/1]).

-export_type([cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_item/0]).

-type cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response_item() ::
    #{ 'extendedPublicKey' := binary()
     }.

encode(#{ 'extendedPublicKey' := ExtendedPublicKey
        }) ->
    #{ 'extendedPublicKey' => ExtendedPublicKey
     }.
