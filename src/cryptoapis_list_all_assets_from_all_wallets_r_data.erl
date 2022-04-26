-module(cryptoapis_list_all_assets_from_all_wallets_r_data).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_r_data/0]).

-type cryptoapis_list_all_assets_from_all_wallets_r_data() ::
    #{ 'limit' := integer(),
       'offset' := integer(),
       'total' := integer(),
       'items' := list()
     }.

encode(#{ 'limit' := Limit,
          'offset' := Offset,
          'total' := Total,
          'items' := Items
        }) ->
    #{ 'limit' => Limit,
       'offset' => Offset,
       'total' => Total,
       'items' => Items
     }.
