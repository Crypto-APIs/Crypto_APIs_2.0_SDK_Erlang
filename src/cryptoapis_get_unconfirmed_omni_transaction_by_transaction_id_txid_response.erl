-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response_data:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response_data()
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
