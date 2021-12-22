-module(cryptoapis_inline_response_401_32).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_32/0]).

-type cryptoapis_inline_response_401_32() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_omni_transaction_details_by_transaction_id_txid_e401:cryptoapis_get_omni_transaction_details_by_transaction_id_txid_e401()
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
