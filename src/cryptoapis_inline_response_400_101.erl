-module(cryptoapis_inline_response_400_101).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_101/0]).

-type cryptoapis_inline_response_400_101() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_estimate_token_gas_limit_e400:cryptoapis_estimate_token_gas_limit_e400()
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
