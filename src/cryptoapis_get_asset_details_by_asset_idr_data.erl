-module(cryptoapis_get_asset_details_by_asset_idr_data).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_idr_data/0]).

-type cryptoapis_get_asset_details_by_asset_idr_data() ::
    #{ 'item' := cryptoapis_get_asset_details_by_asset_idri:cryptoapis_get_asset_details_by_asset_idri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
