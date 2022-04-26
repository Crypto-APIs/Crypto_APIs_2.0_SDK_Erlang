-module(cryptoapis_inline_response_401_51).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_51/0]).

-type cryptoapis_inline_response_401_51() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_e401:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_e401()
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
