-module(cryptoapis_metadata_api).

-export([list_supported_assets/1, list_supported_assets/2]).

-define(BASE_URL, <<"/v2">>).

%% @doc List Supported Assets
%% This endpoint will return a list of supported assets. The asset could be a cryptocurrency or FIAT assets that we support. Each asset has a unique identifier - `assetId` and a unique symbol in the form of a string, e.g. \"BTC\".    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_supported_assets(ctx:ctx()) -> {ok, cryptoapis_list_supported_assets_r:cryptoapis_list_supported_assets_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_supported_assets(Ctx) ->
    list_supported_assets(Ctx, #{}).

-spec list_supported_assets(ctx:ctx(), maps:map()) -> {ok, cryptoapis_list_supported_assets_r:cryptoapis_list_supported_assets_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_supported_assets(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/assets/supported">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'assetType', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


