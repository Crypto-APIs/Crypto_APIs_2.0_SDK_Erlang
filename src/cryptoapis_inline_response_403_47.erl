-module(cryptoapis_inline_response_403_47).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_47/0]).

-type cryptoapis_inline_response_403_47() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_e403:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_e403()
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
