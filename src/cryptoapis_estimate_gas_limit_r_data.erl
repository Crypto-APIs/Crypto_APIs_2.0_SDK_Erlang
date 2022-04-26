-module(cryptoapis_estimate_gas_limit_r_data).

-export([encode/1]).

-export_type([cryptoapis_estimate_gas_limit_r_data/0]).

-type cryptoapis_estimate_gas_limit_r_data() ::
    #{ 'item' := cryptoapis_estimate_gas_limit_ri:cryptoapis_estimate_gas_limit_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
