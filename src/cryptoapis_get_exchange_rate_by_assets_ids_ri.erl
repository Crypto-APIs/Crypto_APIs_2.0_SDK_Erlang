-module(cryptoapis_get_exchange_rate_by_assets_ids_ri).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_assets_ids_ri/0]).

-type cryptoapis_get_exchange_rate_by_assets_ids_ri() ::
    #{ 'calculationTimestamp' := integer(),
       'fromAssetId' := binary(),
       'fromAssetSymbol' := binary(),
       'rate' := binary(),
       'toAssetId' := binary(),
       'toAssetSymbol' := binary()
     }.

encode(#{ 'calculationTimestamp' := CalculationTimestamp,
          'fromAssetId' := FromAssetId,
          'fromAssetSymbol' := FromAssetSymbol,
          'rate' := Rate,
          'toAssetId' := ToAssetId,
          'toAssetSymbol' := ToAssetSymbol
        }) ->
    #{ 'calculationTimestamp' => CalculationTimestamp,
       'fromAssetId' => FromAssetId,
       'fromAssetSymbol' => FromAssetSymbol,
       'rate' => Rate,
       'toAssetId' => ToAssetId,
       'toAssetSymbol' => ToAssetSymbol
     }.
