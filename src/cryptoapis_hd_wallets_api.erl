-module(cryptoapis_hd_wallets_api).

-export([derive_and_sync_new_change_addresses/4, derive_and_sync_new_change_addresses/5,
         derive_and_sync_new_receiving_addresses/4, derive_and_sync_new_receiving_addresses/5,
         get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets/4, get_hd_wallet_(x_pub,_y_pub,_z_pub)_assets/5,
         get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/4, get_hd_wallet_(x_pub,_y_pub,_z_pub)_details/5,
         list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/4, list_hd_wallet_(x_pub,_y_pub,_z_pub)_transactions/5,
         list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos/4, list_hd_wallet_(x_pub,_y_pub,_z_pub)_utxos/5,
         list_synced_addresses/4, list_synced_addresses/5,
         prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)/4, prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)/5,
         prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)/4, prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)/5,
         sync_hd_wallet_(x_pub,_y_pub,_z_pub)/4, sync_hd_wallet_(x_pub,_y_pub,_z_pub)/5,
         sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)/4, sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)/5]).

-define(BASE_URL, <<"">>).

%% @doc Derive And Sync New Change Addresses
%% Through this endpoint users can derive 100 change addresses, starting from the last index we have data for, which are then added to the xPub, subscribed for syncing, and start recording data. If no data is available, it will start from index 0.
-spec derive_and_sync_new_change_addresses(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_derive_and_sync_new_change_addresses_r:cryptoapis_derive_and_sync_new_change_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_and_sync_new_change_addresses(Ctx, Blockchain, Network) ->
    derive_and_sync_new_change_addresses(Ctx, Blockchain, Network, #{}).

-spec derive_and_sync_new_change_addresses(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_derive_and_sync_new_change_addresses_r:cryptoapis_derive_and_sync_new_change_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_and_sync_new_change_addresses(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/derive-sync-change">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisDeriveAndSyncNewChangeAddressesRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Derive And Sync New Receiving Addresses
%% Through this endpoint users can derive 100 receiving addresses, starting from the last index we have data for, which are then added to the xPub, subscribed for syncing, and start recording data. If no data is available, it will start from index 0.
-spec derive_and_sync_new_receiving_addresses(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_derive_and_sync_new_receiving_addresses_r:cryptoapis_derive_and_sync_new_receiving_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_and_sync_new_receiving_addresses(Ctx, Blockchain, Network) ->
    derive_and_sync_new_receiving_addresses(Ctx, Blockchain, Network, #{}).

-spec derive_and_sync_new_receiving_addresses(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_derive_and_sync_new_receiving_addresses_r:cryptoapis_derive_and_sync_new_receiving_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_and_sync_new_receiving_addresses(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/derive-and-sync">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisDeriveAndSyncNewReceivingAddressesRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

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

%% @doc List Synced Addresses
%% Through this endpoint users can list all addresses that Crypto APIs has synced for a specific xPub. This includes previous and current/new xPubs, what addresses we’ve synced for them, etc.
-spec list_synced_addresses(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_synced_addresses_r:cryptoapis_list_synced_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_synced_addresses(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    list_synced_addresses(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec list_synced_addresses(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_synced_addresses_r:cryptoapis_list_synced_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_synced_addresses(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/synced-addresses">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'addressFormat', 'isChangeAddress', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prepare A UTXO-Based Transaction From HD Wallet (xPub, yPub, zPub)
%% Through the “Prepare a UTXO-based transaction from xPub” endpoint users can prepare a transaction for signing from all synced with Crypto APIs addresses for the specific xPub. This is based on the `selectionStrategy` and the addresses’ balances. In the case a user has an address not synced with Crypto APIs, it will not be included. This endpoint applies to all supported UTXO-based blockchain protocols, e.g. Bitcoin, Litecoin, etc.
-spec prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network) ->
    prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, #{}).

-spec prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
prepare_a_utxo_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/prepare-utxo-transaction">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisPrepareAutxoBasedTransactionFromHdWalletXPubYPubZPubRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prepare An Account-Based Transaction From HD Wallet (xPub, yPub, zPub)
%% Through the “Prepare an account-based transaction from xPub” endpoint users can prepare a transaction for signing from a synced with Crypto APIs address from the specific xPub. This endpoint applies to all supported account-based blockchain protocols, e.g. Ethereum, BSC, etc
-spec prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network) ->
    prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, #{}).

-spec prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
prepare_an_account_based_transaction_from_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/prepare-account-based-transaction">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisPrepareAnAccountBasedTransactionFromHdWalletXPubYPubZPubRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
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

%% @doc Sync New HD Wallet (xPub, yPub, zPub)
%% Through this endpoint users can add a brand new xPub to the Crypto APIs system to be ready for deriving. Unlike our other similar endpoint “Sync HD Wallet (xPub, yPub, zPub)”, this endpoint does not create new addresses nor syncs old data.
-spec sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network) ->
    sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, #{}).

-spec sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r:cryptoapis_sync_new_hd_wallet_x_pub_y_pub_z_pub_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
sync_new_hd_wallet_(x_pub,_y_pub,_z_pub)(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/hd/sync-new">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisSyncNewHdWalletXPubYPubZPubRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


