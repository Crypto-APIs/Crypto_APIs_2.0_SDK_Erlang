-module(cryptoapis_derive_hd_wallet__x_pub__y_pub__z_pub__change_or_receiving_addresses_400_response).

-export([encode/1]).

-export_type([cryptoapis_derive_hd_wallet__x_pub__y_pub__z_pub__change_or_receiving_addresses_400_response/0]).

-type cryptoapis_derive_hd_wallet__x_pub__y_pub__z_pub__change_or_receiving_addresses_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_e400:cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_e400()
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
