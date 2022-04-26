-module(cryptoapis_inline_response_403_70).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_70/0]).

-type cryptoapis_inline_response_403_70() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_e403:cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_e403()
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
