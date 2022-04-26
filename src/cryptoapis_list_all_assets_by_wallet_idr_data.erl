-module(cryptoapis_list_all_assets_by_wallet_idr_data).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_by_wallet_idr_data/0]).

-type cryptoapis_list_all_assets_by_wallet_idr_data() ::
    #{ 'item' := cryptoapis_list_all_assets_by_wallet_idri:cryptoapis_list_all_assets_by_wallet_idri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
