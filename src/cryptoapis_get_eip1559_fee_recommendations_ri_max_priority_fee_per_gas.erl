-module(cryptoapis_get_eip1559_fee_recommendations_ri_max_priority_fee_per_gas).

-export([encode/1]).

-export_type([cryptoapis_get_eip1559_fee_recommendations_ri_max_priority_fee_per_gas/0]).

-type cryptoapis_get_eip1559_fee_recommendations_ri_max_priority_fee_per_gas() ::
    #{ 'fast' := binary(),
       'slow' := binary(),
       'standard' := binary(),
       'unit' := binary()
     }.

encode(#{ 'fast' := Fast,
          'slow' := Slow,
          'standard' := Standard,
          'unit' := Unit
        }) ->
    #{ 'fast' => Fast,
       'slow' => Slow,
       'standard' => Standard,
       'unit' => Unit
     }.
