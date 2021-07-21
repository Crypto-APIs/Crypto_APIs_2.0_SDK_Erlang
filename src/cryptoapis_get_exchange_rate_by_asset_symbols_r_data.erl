-module(cryptoapis_get_exchange_rate_by_asset_symbols_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_r_data/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_r_data() ::
    #{ 'item' := cryptoapis_get_exchange_rate_by_asset_symbols_ri:cryptoapis_get_exchange_rate_by_asset_symbols_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
