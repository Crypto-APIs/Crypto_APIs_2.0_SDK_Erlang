-module(cryptoapis_get_exchange_rate_by_asset_symbols_response_data).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_response_data/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_response_data() ::
    #{ 'item' := cryptoapis_get_exchange_rate_by_asset_symbols_response_item:cryptoapis_get_exchange_rate_by_asset_symbols_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
