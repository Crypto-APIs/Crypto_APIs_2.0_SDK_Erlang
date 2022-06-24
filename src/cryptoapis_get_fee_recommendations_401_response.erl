-module(cryptoapis_get_fee_recommendations_401_response).

-export([encode/1]).

-export_type([cryptoapis_get_fee_recommendations_401_response/0]).

-type cryptoapis_get_fee_recommendations_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_fee_recommendations_e401:cryptoapis_get_fee_recommendations_e401()
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
