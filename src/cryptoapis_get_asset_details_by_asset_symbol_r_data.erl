-module(cryptoapis_get_asset_details_by_asset_symbol_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_symbol_r_data/0]).

-type cryptoapis_get_asset_details_by_asset_symbol_r_data() ::
    #{ 'item' := cryptoapis_get_asset_details_by_asset_symbol_ri:cryptoapis_get_asset_details_by_asset_symbol_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
