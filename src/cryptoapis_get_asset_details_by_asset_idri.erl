-module(cryptoapis_get_asset_details_by_asset_idri).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_idri/0]).

-type cryptoapis_get_asset_details_by_asset_idri() ::
    #{ 'assetId' := binary(),
       'assetLogo' := cryptoapis_get_asset_details_by_asset_idri_asset_logo:cryptoapis_get_asset_details_by_asset_idri_asset_logo(),
       'assetName' := binary(),
       'assetOriginalSymbol' := binary(),
       'assetSymbol' := binary(),
       'assetType' := binary(),
       'latestRate' := cryptoapis_get_asset_details_by_asset_idri_latest_rate:cryptoapis_get_asset_details_by_asset_idri_latest_rate(),
       'slug' => binary(),
       'specificData' := cryptoapis_get_asset_details_by_asset_idris:cryptoapis_get_asset_details_by_asset_idris()
     }.

encode(#{ 'assetId' := AssetId,
          'assetLogo' := AssetLogo,
          'assetName' := AssetName,
          'assetOriginalSymbol' := AssetOriginalSymbol,
          'assetSymbol' := AssetSymbol,
          'assetType' := AssetType,
          'latestRate' := LatestRate,
          'slug' := Slug,
          'specificData' := SpecificData
        }) ->
    #{ 'assetId' => AssetId,
       'assetLogo' => AssetLogo,
       'assetName' => AssetName,
       'assetOriginalSymbol' => AssetOriginalSymbol,
       'assetSymbol' => AssetSymbol,
       'assetType' => AssetType,
       'latestRate' => LatestRate,
       'slug' => Slug,
       'specificData' => SpecificData
     }.
