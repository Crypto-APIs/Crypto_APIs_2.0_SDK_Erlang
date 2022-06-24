-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id__txid__400_response).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id__txid__400_response/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id__txid__400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e400:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e400()
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
