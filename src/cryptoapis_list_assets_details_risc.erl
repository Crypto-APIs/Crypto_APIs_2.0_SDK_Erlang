-module(cryptoapis_list_assets_details_risc).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_risc/0]).

-type cryptoapis_list_assets_details_risc() ::
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
