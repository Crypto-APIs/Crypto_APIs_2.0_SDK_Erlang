-module(cryptoapis_list_all_assets_by_wallet_ide400).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_by_wallet_ide400/0]).

-type cryptoapis_list_all_assets_by_wallet_ide400() ::
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
