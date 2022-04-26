-module(cryptoapis_inline_response_422_5).

-export([encode/1]).

-export_type([cryptoapis_inline_response_422_5/0]).

-type cryptoapis_inline_response_422_5() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_e422:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_e422()
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
