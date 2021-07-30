-module(cryptoapis_informative_api).

-export([get_wallet_asset_details/4, get_wallet_asset_details/5,
         list_deposit_addresses/4, list_deposit_addresses/5,
         list_supported_tokens/3, list_supported_tokens/4]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Wallet Asset Details
%% Through this endpoint customers can obtain details about a specific Wallet/Vault.
-spec get_wallet_asset_details(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_wallet_asset_details_r:cryptoapis_get_wallet_asset_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_wallet_asset_details(Ctx, Blockchain, Network, WalletId) ->
    get_wallet_asset_details(Ctx, Blockchain, Network, WalletId, #{}).

-spec get_wallet_asset_details(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_wallet_asset_details_r:cryptoapis_get_wallet_asset_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_wallet_asset_details(Ctx, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Deposit Addresses
%% Through this endpoint customers can pull a list of Deposit/Receiving Addresses they have already generated.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_deposit_addresses(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_deposit_addresses_r:cryptoapis_list_deposit_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_deposit_addresses(Ctx, Blockchain, Network, WalletId) ->
    list_deposit_addresses(Ctx, Blockchain, Network, WalletId, #{}).

-spec list_deposit_addresses(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_deposit_addresses_r:cryptoapis_list_deposit_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_deposit_addresses(Ctx, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/addresses">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Supported Tokens
%% Through this endpoint customers can obtain information on multiple tokens at once.
-spec list_supported_tokens(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_supported_tokens_r:cryptoapis_list_supported_tokens_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_supported_tokens(Ctx, Blockchain, Network) ->
    list_supported_tokens(Ctx, Blockchain, Network, #{}).

-spec list_supported_tokens(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_supported_tokens_r:cryptoapis_list_supported_tokens_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_supported_tokens(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/info/", Blockchain, "/", Network, "/supported-tokens">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


