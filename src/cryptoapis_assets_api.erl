-module(cryptoapis_assets_api).

-export([list_assets_details/1, list_assets_details/2]).

-define(BASE_URL, <<"/v2">>).

%% @doc List Assets Details
%% This endpoint will return a list of details on assets. These could be cryptocurrencies or FIAT assets that we support. Each asset has a unique identifier - `assetId` and a unique symbol in the form of a string, e.g. \"BTC\".    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
-spec list_assets_details(ctx:ctx()) -> {ok, cryptoapis_list_assets_details_r:cryptoapis_list_assets_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_assets_details(Ctx) ->
    list_assets_details(Ctx, #{}).

-spec list_assets_details(ctx:ctx(), maps:map()) -> {ok, cryptoapis_list_assets_details_r:cryptoapis_list_assets_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_assets_details(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/market-data/assets/details">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'assetType', 'cryptoType', 'limit', 'offset', 'waasEnabled'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


