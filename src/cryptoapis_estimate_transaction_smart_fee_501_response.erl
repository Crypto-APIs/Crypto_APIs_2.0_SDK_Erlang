-module(cryptoapis_estimate_transaction_smart_fee_501_response).

-export([encode/1]).

-export_type([cryptoapis_estimate_transaction_smart_fee_501_response/0]).

-type cryptoapis_estimate_transaction_smart_fee_501_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unimplemented:cryptoapis_unimplemented()
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
