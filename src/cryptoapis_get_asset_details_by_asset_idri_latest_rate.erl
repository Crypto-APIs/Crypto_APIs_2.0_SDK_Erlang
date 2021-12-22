-module(cryptoapis_get_asset_details_by_asset_idri_latest_rate).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_idri_latest_rate/0]).

-type cryptoapis_get_asset_details_by_asset_idri_latest_rate() ::
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
