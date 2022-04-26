-module(cryptoapis_hd_wallets_api).

-export([get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets/4, get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets/5,
         get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/4, get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/5,
         list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/4, list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/5,
         list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos/4, list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos/5,
         sync_hd_wallet_(x_pub,_y_pub,_z_pub)/4, sync_hd_wallet_(x_pub,_y_pub,_z_pub)/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get HD Wallet (xPub, yPub, zPub) Assets
%% This endpoint will return details on assets we support for a specified from the customer extended public key (xPub). These could be cryptocurrencies, fungible or non-fungible (NFT) tokens. Each asset has a unique identifier - assetId, and a unique symbol in the form of a string, e.g. \"USDT\".
-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/assets">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get HD Wallet (xPub, yPub, zPub) Details
%% HD wallet details is useful endpoint to get the most important data about HD wallet without the need to do a lot of calculations, once the HD Wallet is synced using Sync endpoint we keep it up to date and we calculate these details in advance.
-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/details">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List HD Wallet (xPub, yPub, zPub) Transactions
%% This endpoint will list HD Wallet transactions.
-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_r:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_r:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List HD Wallet (xPub, yPub, zPub) UTXOs
%% Through this endpoint you can list HD wallet's UTXOs (Unspent Transaction Outputs) by providing extended public key of an already synced HD wallet.
-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_r:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_r:cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/utxos">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sync HD Wallet (xPub, yPub, zPub)
%% HD wallets usually have a lot of addresses and transactions, getting the data on demand is a heavy operation. That's why we have created this feature, to be able to get HD wallet details or transactions this HD wallet must be synced first. In addition to the initial sync we keep updating the synced HD wallets all the time.
-spec sync_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network) ->
    sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, #{}).

-spec sync_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_sync_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/sync">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisSyncHdWalletXPubYPubZPubRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


