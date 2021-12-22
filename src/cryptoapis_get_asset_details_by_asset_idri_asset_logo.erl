-module(cryptoapis_get_asset_details_by_asset_idri_asset_logo).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_idri_asset_logo/0]).

-type cryptoapis_get_asset_details_by_asset_idri_asset_logo() ::
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
