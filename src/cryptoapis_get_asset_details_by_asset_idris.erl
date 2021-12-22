-module(cryptoapis_get_asset_details_by_asset_idris).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_idris/0]).

-type cryptoapis_get_asset_details_by_asset_idris() ::
    #{ '1HourPriceChangeInPercentage' := binary(),
       '1WeekPriceChangeInPercentage' := binary(),
       '24HoursPriceChangeInPercentage' := binary(),
       '24HoursTradingVolume' := binary(),
       'assetType' := binary(),
       'circulatingSupply' := binary(),
       'marketCapInUSD' := binary(),
       'maxSupply' := binary()
     }.

encode(#{ '1HourPriceChangeInPercentage' := 1HourPriceChangeInPercentage,
          '1WeekPriceChangeInPercentage' := 1WeekPriceChangeInPercentage,
          '24HoursPriceChangeInPercentage' := 24HoursPriceChangeInPercentage,
          '24HoursTradingVolume' := 24HoursTradingVolume,
          'assetType' := AssetType,
          'circulatingSupply' := CirculatingSupply,
          'marketCapInUSD' := MarketCapInUSD,
          'maxSupply' := MaxSupply
        }) ->
    #{ '1HourPriceChangeInPercentage' => 1HourPriceChangeInPercentage,
       '1WeekPriceChangeInPercentage' => 1WeekPriceChangeInPercentage,
       '24HoursPriceChangeInPercentage' => 24HoursPriceChangeInPercentage,
       '24HoursTradingVolume' => 24HoursTradingVolume,
       'assetType' => AssetType,
       'circulatingSupply' => CirculatingSupply,
       'marketCapInUSD' => MarketCapInUSD,
       'maxSupply' => MaxSupply
     }.
