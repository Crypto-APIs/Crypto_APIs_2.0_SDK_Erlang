-module(cryptoapis_informative_api).

-export([get_transaction_request_details/2, get_transaction_request_details/3,
         get_wallet_asset_details/4, get_wallet_asset_details/5,
         get_wallet_transaction_details_by_transaction_id/4, get_wallet_transaction_details_by_transaction_id/5,
         list_deposit_addresses/4, list_deposit_addresses/5,
         list_supported_tokens/3, list_supported_tokens/4,
         list_wallet_transactions/4, list_wallet_transactions/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Transaction Request Details
%% Through this endpoint customers can obtain details on transaction request.    {note}This regards **transaction requests**, which is not to be confused with **transactions**. Transaction requests may not be approved due to any reason, hence a transaction may not occur.{/note}
-spec get_transaction_request_details(ctx:ctx(), binary()) -> {ok, cryptoapis_get_transaction_request_details_r:cryptoapis_get_transaction_request_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_request_details(Ctx, TransactionRequestId) ->
    get_transaction_request_details(Ctx, TransactionRequestId, #{}).

-spec get_transaction_request_details(ctx:ctx(), binary(), maps:map()) -> {ok, cryptoapis_get_transaction_request_details_r:cryptoapis_get_transaction_request_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_request_details(Ctx, TransactionRequestId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/transactionRequests/", TransactionRequestId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

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

%% @doc Get Wallet Transaction Details By Transaction ID
%% Through this endpoint users can obtain Wallet transaction information by providing a `transactionId`. Customers can receive information only for a transaction that has been made from their own wallet.
-spec get_wallet_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_wallet_transaction_details_by_transaction_idr:cryptoapis_get_wallet_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_wallet_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId) ->
    get_wallet_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId, #{}).

-spec get_wallet_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_wallet_transaction_details_by_transaction_idr:cryptoapis_get_wallet_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_wallet_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/wallets/", Blockchain, "/", Network, "/transactions/", TransactionId, "">>],
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

%% @doc List Wallet Transactions
%% Through this endpoint customers can list Transactions from and to their Wallet. The data returned will include `transactionId`, `direction` of the transaction - incoming or outgoing, `amount` and more.
-spec list_wallet_transactions(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_wallet_transactions_r:cryptoapis_list_wallet_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_wallet_transactions(Ctx, Blockchain, Network, WalletId) ->
    list_wallet_transactions(Ctx, Blockchain, Network, WalletId, #{}).

-spec list_wallet_transactions(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_wallet_transactions_r:cryptoapis_list_wallet_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_wallet_transactions(Ctx, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


