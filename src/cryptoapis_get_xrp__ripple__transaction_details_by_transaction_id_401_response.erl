-module(cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_401_response).

-export([encode/1]).

-export_type([cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_401_response/0]).

-type cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_ide401:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_ide401()
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
