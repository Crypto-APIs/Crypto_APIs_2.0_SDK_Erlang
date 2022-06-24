-module(cryptoapis_estimate_gas_limit_401_response).

-export([encode/1]).

-export_type([cryptoapis_estimate_gas_limit_401_response/0]).

-type cryptoapis_estimate_gas_limit_401_response() ::
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
