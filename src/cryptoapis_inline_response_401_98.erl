-module(cryptoapis_inline_response_401_98).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_98/0]).

-type cryptoapis_inline_response_401_98() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_eip1559_fee_recommendations_e401:cryptoapis_get_eip1559_fee_recommendations_e401()
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
