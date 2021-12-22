-module(cryptoapis_get_asset_details_by_asset_ide403).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_ide403/0]).

-type cryptoapis_get_asset_details_by_asset_ide403() ::
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
