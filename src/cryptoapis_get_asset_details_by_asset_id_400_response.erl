-module(cryptoapis_get_asset_details_by_asset_id_400_response).

-export([encode/1]).

-export_type([cryptoapis_get_asset_details_by_asset_id_400_response/0]).

-type cryptoapis_get_asset_details_by_asset_id_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_asset_details_by_asset_ide400:cryptoapis_get_asset_details_by_asset_ide400()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
