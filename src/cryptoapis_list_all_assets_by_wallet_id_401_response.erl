-module(cryptoapis_list_all_assets_by_wallet_id_401_response).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_by_wallet_id_401_response/0]).

-type cryptoapis_list_all_assets_by_wallet_id_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_all_assets_by_wallet_ide401:cryptoapis_list_all_assets_by_wallet_ide401()
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
