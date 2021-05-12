-module(cryptoapis_list_assets_details_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_assets_details_response_item/0]).

-type cryptoapis_list_assets_details_response_item() ::
    #{ 'assetId' := binary(),
       'assetLogo' := cryptoapis_list_assets_details_response_item_asset_logo:cryptoapis_list_assets_details_response_item_asset_logo(),
       'assetName' := binary(),
       'assetOriginalSymbol' := binary(),
       'assetSymbol' := binary(),
       'assetType' := binary(),
       'latestRate' := cryptoapis_list_assets_details_response_item_latest_rate:cryptoapis_list_assets_details_response_item_latest_rate(),
       'specificData' := cryptoapis_list_assets_details_response_item_specific_data:cryptoapis_list_assets_details_response_item_specific_data()
     }.

encode(#{ 'assetId' := AssetId,
          'assetLogo' := AssetLogo,
          'assetName' := AssetName,
          'assetOriginalSymbol' := AssetOriginalSymbol,
          'assetSymbol' := AssetSymbol,
          'assetType' := AssetType,
          'latestRate' := LatestRate,
          'specificData' := SpecificData
        }) ->
    #{ 'assetId' => AssetId,
       'assetLogo' => AssetLogo,
       'assetName' => AssetName,
       'assetOriginalSymbol' => AssetOriginalSymbol,
       'assetSymbol' => AssetSymbol,
       'assetType' => AssetType,
       'latestRate' => LatestRate,
       'specificData' => SpecificData
     }.
