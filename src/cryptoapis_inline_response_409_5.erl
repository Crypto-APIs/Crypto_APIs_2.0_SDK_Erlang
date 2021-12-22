-module(cryptoapis_inline_response_409_5).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409_5/0]).

-type cryptoapis_inline_response_409_5() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e409:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e409()
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
