-module(cryptoapis_prepare_a_utxo_based_transaction_from_hd_wallet__x_pub__y_pub__z_pub__401_response).

-export([encode/1]).

-export_type([cryptoapis_prepare_a_utxo_based_transaction_from_hd_wallet__x_pub__y_pub__z_pub__401_response/0]).

-type cryptoapis_prepare_a_utxo_based_transaction_from_hd_wallet__x_pub__y_pub__z_pub__401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_e401:cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_e401()
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
