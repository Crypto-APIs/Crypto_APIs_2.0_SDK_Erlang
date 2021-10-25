-module(cryptoapis_get_eip1559_fee_recommendations_ri).

-export([encode/1]).

-export_type([cryptoapis_get_eip1559_fee_recommendations_ri/0]).

-type cryptoapis_get_eip1559_fee_recommendations_ri() ::
    #{ 'baseFeePerGas' := cryptoapis_get_eip1559_fee_recommendations_ri_base_fee_per_gas:cryptoapis_get_eip1559_fee_recommendations_ri_base_fee_per_gas(),
       'maxFeePerGas' := cryptoapis_get_eip1559_fee_recommendations_ri_max_fee_per_gas:cryptoapis_get_eip1559_fee_recommendations_ri_max_fee_per_gas(),
       'maxPriorityFeePerGas' := cryptoapis_get_eip1559_fee_recommendations_ri_max_priority_fee_per_gas:cryptoapis_get_eip1559_fee_recommendations_ri_max_priority_fee_per_gas()
     }.

encode(#{ 'baseFeePerGas' := BaseFeePerGas,
          'maxFeePerGas' := MaxFeePerGas,
          'maxPriorityFeePerGas' := MaxPriorityFeePerGas
        }) ->
    #{ 'baseFeePerGas' => BaseFeePerGas,
       'maxFeePerGas' => MaxFeePerGas,
       'maxPriorityFeePerGas' => MaxPriorityFeePerGas
     }.
