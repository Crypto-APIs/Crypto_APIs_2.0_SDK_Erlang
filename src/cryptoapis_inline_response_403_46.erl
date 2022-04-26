-module(cryptoapis_inline_response_403_46).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_46/0]).

-type cryptoapis_inline_response_403_46() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e403:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_e403()
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
