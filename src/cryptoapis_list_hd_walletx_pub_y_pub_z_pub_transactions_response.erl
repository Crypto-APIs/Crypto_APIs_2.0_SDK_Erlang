-module(cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response).

-export([encode/1]).

-export_type([cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response/0]).

-type cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_data:cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
