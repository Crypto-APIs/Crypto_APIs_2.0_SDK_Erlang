-module(cryptoapis_list_assets_details_response_item_specific_data).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_response_item_specific_data/0]).

-type cryptoapis_list_assets_details_response_item_specific_data() ::
    #{ '1HourPriceChangeInPercentage' := binary(),
       '1WeekPriceChangeInPercentage' := binary(),
       '24HoursPriceChangeInPercentage' := binary(),
       '24HoursTradingVolume' := binary(),
       'circulatingSupply' := binary(),
       'marketCapInUSD' := binary(),
       'maxSupply' := binary()
     }.

encode(#{ '1HourPriceChangeInPercentage' := 1HourPriceChangeInPercentage,
          '1WeekPriceChangeInPercentage' := 1WeekPriceChangeInPercentage,
          '24HoursPriceChangeInPercentage' := 24HoursPriceChangeInPercentage,
          '24HoursTradingVolume' := 24HoursTradingVolume,
          'circulatingSupply' := CirculatingSupply,
          'marketCapInUSD' := MarketCapInUSD,
          'maxSupply' := MaxSupply
        }) ->
    #{ '1HourPriceChangeInPercentage' => 1HourPriceChangeInPercentage,
       '1WeekPriceChangeInPercentage' => 1WeekPriceChangeInPercentage,
       '24HoursPriceChangeInPercentage' => 24HoursPriceChangeInPercentage,
       '24HoursTradingVolume' => 24HoursTradingVolume,
       'circulatingSupply' => CirculatingSupply,
       'marketCapInUSD' => MarketCapInUSD,
       'maxSupply' => MaxSupply
     }.
