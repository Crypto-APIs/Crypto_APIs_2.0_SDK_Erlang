-module(cryptoapis_list_supported_assets_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_supported_assets_response_item/0]).

-type cryptoapis_list_supported_assets_response_item() ::
    #{ 'assetId' := binary(),
       'assetName' := binary(),
       'assetSymbol' := binary(),
       'assetType' := binary(),
       'originalSymbol' := binary()
     }.

encode(#{ 'assetId' := AssetId,
          'assetName' := AssetName,
          'assetSymbol' := AssetSymbol,
          'assetType' := AssetType,
          'originalSymbol' := OriginalSymbol
        }) ->
    #{ 'assetId' => AssetId,
       'assetName' => AssetName,
       'assetSymbol' => AssetSymbol,
       'assetType' => AssetType,
       'originalSymbol' => OriginalSymbol
     }.
