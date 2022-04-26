-module(cryptoapis_inline_response_401_53).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_53/0]).

-type cryptoapis_inline_response_401_53() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e401:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e401()
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
