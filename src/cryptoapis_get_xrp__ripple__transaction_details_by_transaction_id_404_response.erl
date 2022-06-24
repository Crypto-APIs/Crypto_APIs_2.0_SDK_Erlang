-module(cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_404_response).

-export([encode/1]).

-export_type([cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_404_response/0]).

-type cryptoapis_get_xrp__ripple__transaction_details_by_transaction_id_404_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_resource_not_found:cryptoapis_resource_not_found()
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
