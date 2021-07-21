-module(cryptoapis_list_assets_details_ri_asset_logo).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_ri_asset_logo/0]).

-type cryptoapis_list_assets_details_ri_asset_logo() ::
    #{ 'encoding' := binary(),
       'imageData' := binary(),
       'mimeType' := binary()
     }.

encode(#{ 'encoding' := Encoding,
          'imageData' := ImageData,
          'mimeType' := MimeType
        }) ->
    #{ 'encoding' => Encoding,
       'imageData' => ImageData,
       'mimeType' => MimeType
     }.
