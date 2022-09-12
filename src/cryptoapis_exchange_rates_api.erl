-module(cryptoapis_exchange_rates_api).

-export([get_exchange_rate_by_asset_symbols/3, get_exchange_rate_by_asset_symbols/4,
         get_exchange_rate_by_assets_ids/3, get_exchange_rate_by_assets_ids/4]).

-define(BASE_URL, <<"">>).

%% @doc Get Exchange Rate By Asset Symbols
%% Through this endpoint customers can obtain exchange rates by asset symbols. The process represents the exchange rate value of a single unit of one asset versus another one. Data is provided per unique asset symbol.
-spec get_exchange_rate_by_asset_symbols(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_exchange_rate_by_asset_symbols_r:cryptoapis_get_exchange_rate_by_asset_symbols_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_exchange_rate_by_asset_symbols(Ctx, FromAssetSymbol, ToAssetSymbol) ->
    get_exchange_rate_by_asset_symbols(Ctx, FromAssetSymbol, ToAssetSymbol, #{}).

-spec get_exchange_rate_by_asset_symbols(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_exchange_rate_by_asset_symbols_r:cryptoapis_get_exchange_rate_by_asset_symbols_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_exchange_rate_by_asset_symbols(Ctx, FromAssetSymbol, ToAssetSymbol, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/exchange-rates/by-symbols/", FromAssetSymbol, "/", ToAssetSymbol, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'calculationTimestamp'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Exchange Rate By Assets IDs
%% Through this endpoint customers can obtain exchange rates by asset IDs. The process represents the exchange rate value of a single unit of one asset versus another one. Data is provided per unique asset Reference ID.
-spec get_exchange_rate_by_assets_ids(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_exchange_rate_by_assets_ids_r:cryptoapis_get_exchange_rate_by_assets_ids_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_exchange_rate_by_assets_ids(Ctx, FromAssetId, ToAssetId) ->
    get_exchange_rate_by_assets_ids(Ctx, FromAssetId, ToAssetId, #{}).

-spec get_exchange_rate_by_assets_ids(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_exchange_rate_by_assets_ids_r:cryptoapis_get_exchange_rate_by_assets_ids_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_exchange_rate_by_assets_ids(Ctx, FromAssetId, ToAssetId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/exchange-rates/by-asset-ids/", FromAssetId, "/", ToAssetId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'calculationTimestamp'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


