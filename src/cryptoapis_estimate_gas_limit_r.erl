-module(cryptoapis_estimate_gas_limit_r).

-export([encode/1]).

-export_type([cryptoapis_estimate_gas_limit_r/0]).

-type cryptoapis_estimate_gas_limit_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_estimate_gas_limit_r_data:cryptoapis_estimate_gas_limit_r_data()
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
