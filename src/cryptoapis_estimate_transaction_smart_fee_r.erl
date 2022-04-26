-module(cryptoapis_estimate_transaction_smart_fee_r).

-export([encode/1]).

-export_type([cryptoapis_estimate_transaction_smart_fee_r/0]).

-type cryptoapis_estimate_transaction_smart_fee_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_estimate_transaction_smart_fee_r_data:cryptoapis_estimate_transaction_smart_fee_r_data()
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
