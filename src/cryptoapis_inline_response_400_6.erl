-module(cryptoapis_inline_response_400_6).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_6/0]).

-type cryptoapis_inline_response_400_6() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_xrp_ripple_transaction_details_by_transaction_ide400:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_ide400()
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