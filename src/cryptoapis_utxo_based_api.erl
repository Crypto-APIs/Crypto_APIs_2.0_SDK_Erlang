-module(cryptoapis_utxo_based_api).

-export([get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/4, get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/5,
         list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/4, list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/5,
         sync_hd_wallet_(x_pub,_y_pub,_z_pub)/4, sync_hd_wallet_(x_pub,_y_pub,_z_pub)/5]).

-define(BASE_URL, "/v2").

%% @doc Get HD Wallet (xPub, yPub, zPub) Details
%% HD wallet details is useful endpoint to get the most important data about HD wallet without the need to do a lot of calculations, once the HD Wallet is synced using Sync endpoint we keep it up to date and we calculate these details in advance.
-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response:cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response:cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_hd_wallet_(x_pub,_y_pub,_z_pub)_details(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/details"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List HD Wallet (xPub, yPub, zPub) Transactions
%% This endpoint will list HD Wallet transactions.
-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response:cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response:cryptoapis_list_hd_walletx_pub_y_pub_z_pub_transactions_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/transactions"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'derivation', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sync HD Wallet (xPub, yPub, zPub)
%% HD wallets usually have a lot of addresses and transactions, getting the data on demand is a heavy operation. That's why we have created this feature, to be able to get HD wallet details or transactions this HD wallet must be synced first. In addition to the initial sync we keep updating the synced HD wallets all the time.
-spec sync_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response:cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network) ->
    sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, #{}).

-spec sync_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response:cryptoapis_sync_hd_walletx_pub_y_pub_z_pub_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/hd/sync"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisSyncHdWalletxPubYPubZPubRequestBody,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


