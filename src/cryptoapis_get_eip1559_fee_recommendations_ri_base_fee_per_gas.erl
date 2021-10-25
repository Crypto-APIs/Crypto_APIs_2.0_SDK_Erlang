-module(cryptoapis_get_eip1559_fee_recommendations_ri_base_fee_per_gas).

-export([encode/1]).

-export_type([cryptoapis_get_eip1559_fee_recommendations_ri_base_fee_per_gas/0]).

-type cryptoapis_get_eip1559_fee_recommendations_ri_base_fee_per_gas() ::
    #{ 'unit' := binary(),
       'value' := binary()
     }.

encode(#{ 'unit' := Unit,
          'value' := Value
        }) ->
    #{ 'unit' => Unit,
       'value' => Value
     }.
