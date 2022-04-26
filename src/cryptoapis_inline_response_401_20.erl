-module(cryptoapis_inline_response_401_20).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_20/0]).

-type cryptoapis_inline_response_401_20() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e401:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_e401()
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
