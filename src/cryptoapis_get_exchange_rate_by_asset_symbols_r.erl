-module(cryptoapis_get_exchange_rate_by_asset_symbols_r).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_r/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_exchange_rate_by_asset_symbols_r_data:cryptoapis_get_exchange_rate_by_asset_symbols_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
