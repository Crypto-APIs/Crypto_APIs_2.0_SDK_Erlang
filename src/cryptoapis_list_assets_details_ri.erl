-module(cryptoapis_list_assets_details_ri).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_ri/0]).

-type cryptoapis_list_assets_details_ri() ::
    #{ 'assetId' := binary(),
       'assetLogo' := cryptoapis_list_assets_details_ri_asset_logo:cryptoapis_list_assets_details_ri_asset_logo(),
       'assetName' := binary(),
       'assetOriginalSymbol' := binary(),
       'assetSymbol' := binary(),
       'assetType' := binary(),
       'latestRate' := cryptoapis_list_assets_details_ri_latest_rate:cryptoapis_list_assets_details_ri_latest_rate(),
       'slug' => binary(),
       'specificData' := cryptoapis_list_assets_details_ris:cryptoapis_list_assets_details_ris()
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
