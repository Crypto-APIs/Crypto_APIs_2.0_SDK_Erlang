-module(cryptoapis_get_fee_recommendations_r).

-export([encode/1]).

-export_type([cryptoapis_get_fee_recommendations_r/0]).

-type cryptoapis_get_fee_recommendations_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_fee_recommendations_r_data:cryptoapis_get_fee_recommendations_r_data()
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
