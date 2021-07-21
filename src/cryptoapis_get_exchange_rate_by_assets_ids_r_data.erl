-module(cryptoapis_get_exchange_rate_by_assets_ids_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_assets_ids_r_data/0]).

-type cryptoapis_get_exchange_rate_by_assets_ids_r_data() ::
    #{ 'item' := cryptoapis_get_exchange_rate_by_assets_ids_ri:cryptoapis_get_exchange_rate_by_assets_ids_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
