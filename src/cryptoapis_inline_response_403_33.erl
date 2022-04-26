-module(cryptoapis_inline_response_403_33).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_33/0]).

-type cryptoapis_inline_response_403_33() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_omni_transaction_details_by_transaction_id_txid_e403:cryptoapis_get_omni_transaction_details_by_transaction_id_txid_e403()
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
