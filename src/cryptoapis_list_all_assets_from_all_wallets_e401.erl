-module(cryptoapis_list_all_assets_from_all_wallets_e401).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_e401/0]).

-type cryptoapis_list_all_assets_from_all_wallets_e401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
