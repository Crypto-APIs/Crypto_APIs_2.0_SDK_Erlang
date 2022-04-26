-module(cryptoapis_inline_response_401_100).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_100/0]).

-type cryptoapis_inline_response_401_100() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_estimate_gas_limit_e401:cryptoapis_estimate_gas_limit_e401()
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
