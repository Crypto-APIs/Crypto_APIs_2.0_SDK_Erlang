-module(cryptoapis_get_exchange_rate_by_asset_symbols_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_response_item/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_response_item() ::
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
