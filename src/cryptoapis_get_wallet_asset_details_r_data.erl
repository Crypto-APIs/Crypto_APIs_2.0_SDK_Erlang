-module(cryptoapis_get_wallet_asset_details_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_asset_details_r_data/0]).

-type cryptoapis_get_wallet_asset_details_r_data() ::
    #{ 'item' := cryptoapis_get_wallet_asset_details_ri:cryptoapis_get_wallet_asset_details_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
