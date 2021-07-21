-module(cryptoapis_list_assets_details_ri_latest_rate).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_ri_latest_rate/0]).

-type cryptoapis_list_assets_details_ri_latest_rate() ::
    #{ 'amount' := binary(),
       'calculationTimestamp' => integer(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'calculationTimestamp' := CalculationTimestamp,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'calculationTimestamp' => CalculationTimestamp,
       'unit' => Unit
     }.
