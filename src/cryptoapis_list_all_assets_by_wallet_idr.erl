-module(cryptoapis_list_all_assets_by_wallet_idr).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_by_wallet_idr/0]).

-type cryptoapis_list_all_assets_by_wallet_idr() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_all_assets_by_wallet_idr_data:cryptoapis_list_all_assets_by_wallet_idr_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
