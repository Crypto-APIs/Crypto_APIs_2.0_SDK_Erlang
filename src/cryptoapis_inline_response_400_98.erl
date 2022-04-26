-module(cryptoapis_inline_response_400_98).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_98/0]).

-type cryptoapis_inline_response_400_98() ::
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
