-module(cryptoapis_inline_response_400_84).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_84/0]).

-type cryptoapis_inline_response_400_84() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_eip1559_fee_recommendations_e400:cryptoapis_get_eip1559_fee_recommendations_e400()
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