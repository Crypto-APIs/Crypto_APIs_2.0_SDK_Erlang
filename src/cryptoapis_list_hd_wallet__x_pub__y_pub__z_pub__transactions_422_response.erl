-module(cryptoapis_list_hd_wallet__x_pub__y_pub__z_pub__transactions_422_response).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet__x_pub__y_pub__z_pub__transactions_422_response/0]).

-type cryptoapis_list_hd_wallet__x_pub__y_pub__z_pub__transactions_422_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e422:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e422()
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
