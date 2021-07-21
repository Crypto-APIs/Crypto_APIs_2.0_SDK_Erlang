-module(cryptoapis_list_supported_assets_ri).

-export([encode/1]).

-export_type([cryptoapis_list_supported_assets_ri/0]).

-type cryptoapis_list_supported_assets_ri() ::
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
