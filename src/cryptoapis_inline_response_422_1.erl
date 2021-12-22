-module(cryptoapis_inline_response_422_1).

-export([encode/1]).

-export_type([cryptoapis_inline_response_422_1/0]).

-type cryptoapis_inline_response_422_1() ::
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
