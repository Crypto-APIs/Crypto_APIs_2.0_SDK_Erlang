-module(cryptoapis_assets_api).

-export([get_asset_details_by_asset_id/2, get_asset_details_by_asset_id/3,
         get_asset_details_by_asset_symbol/2, get_asset_details_by_asset_symbol/3]).

-define(BASE_URL, <<"">>).

%% @doc Get Asset Details By Asset ID
%% Through this endpoint users can obtain information on assets by `assetId`.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
-spec get_asset_details_by_asset_id(ctx:ctx(), binary()) -> {ok, cryptoapis_get_asset_details_by_asset_idr:cryptoapis_get_asset_details_by_asset_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_asset_details_by_asset_id(Ctx, AssetId) ->
    get_asset_details_by_asset_id(Ctx, AssetId, #{}).

-spec get_asset_details_by_asset_id(ctx:ctx(), binary(), maps:map()) -> {ok, cryptoapis_get_asset_details_by_asset_idr:cryptoapis_get_asset_details_by_asset_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_asset_details_by_asset_id(Ctx, AssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/assets/assetId/", AssetId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Asset Details By Asset Symbol
%% Through this endpoint users can obtain information on assets by asset symbol.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
-spec get_asset_details_by_asset_symbol(ctx:ctx(), binary()) -> {ok, cryptoapis_get_asset_details_by_asset_symbol_r:cryptoapis_get_asset_details_by_asset_symbol_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_asset_details_by_asset_symbol(Ctx, AssetSymbol) ->
    get_asset_details_by_asset_symbol(Ctx, AssetSymbol, #{}).

-spec get_asset_details_by_asset_symbol(ctx:ctx(), binary(), maps:map()) -> {ok, cryptoapis_get_asset_details_by_asset_symbol_r:cryptoapis_get_asset_details_by_asset_symbol_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_asset_details_by_asset_symbol(Ctx, AssetSymbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/assets/", AssetSymbol, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


