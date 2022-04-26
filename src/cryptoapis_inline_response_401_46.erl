-module(cryptoapis_inline_response_401_46).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_46/0]).

-type cryptoapis_inline_response_401_46() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e401:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e401()
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
