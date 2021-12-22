-module(cryptoapis_get_asset_details_by_asset_symbol_ri).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_symbol_ri/0]).

-type cryptoapis_get_asset_details_by_asset_symbol_ri() ::
    #{ 'assetId' := binary(),
       'assetLogo' := cryptoapis_get_asset_details_by_asset_idri_asset_logo:cryptoapis_get_asset_details_by_asset_idri_asset_logo(),
       'assetName' := binary(),
       'assetOriginalSymbol' := binary(),
       'assetSymbol' := binary(),
       'assetType' := binary(),
       'latestRate' := cryptoapis_get_asset_details_by_asset_idri_latest_rate:cryptoapis_get_asset_details_by_asset_idri_latest_rate(),
       'slug' => binary(),
       'specificData' := cryptoapis_get_asset_details_by_asset_symbol_ris:cryptoapis_get_asset_details_by_asset_symbol_ris()
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
