-module(cryptoapis_estimate_token_gas_limit_ri).

-export([encode/1]).

-export_type([cryptoapis_estimate_token_gas_limit_ri/0]).

-type cryptoapis_estimate_token_gas_limit_ri() ::
    #{ 'gasLimit' := binary()
     }.

encode(#{ 'gasLimit' := GasLimit
        }) ->
    #{ 'gasLimit' => GasLimit
     }.
