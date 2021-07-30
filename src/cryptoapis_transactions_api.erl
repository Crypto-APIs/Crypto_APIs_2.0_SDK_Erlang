-module(cryptoapis_transactions_api).

-export([create_coins_transaction_request_from_address/6, create_coins_transaction_request_from_address/7,
         create_coins_transaction_request_from_wallet/5, create_coins_transaction_request_from_wallet/6,
         create_tokens_transaction_request_from_address/6, create_tokens_transaction_request_from_address/7]).

-define(BASE_URL, <<"/v2">>).

%% @doc Create Coins Transaction Request from Address
%% Through this endpoint users can create a new single transaction request from one address to another.
-spec create_coins_transaction_request_from_address(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, cryptoapis_create_coins_transaction_request_from_address_r:cryptoapis_create_coins_transaction_request_from_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_coins_transaction_request_from_address(Ctx, Address, Blockchain, Network, WalletId) ->
    create_coins_transaction_request_from_address(Ctx, Address, Blockchain, Network, WalletId, #{}).

-spec create_coins_transaction_request_from_address(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_create_coins_transaction_request_from_address_r:cryptoapis_create_coins_transaction_request_from_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_coins_transaction_request_from_address(Ctx, Address, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/addresses/", Address, "/transaction-requests">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisCreateCoinsTransactionRequestFromAddressRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Coins Transaction Request from Wallet
%% Through this endpoint users can create a new transaction request from the entire Wallet instead from just a specific address. This endpoint can generate transactions from multiple to multiple addresses.    {warning}This is available **only** for UTXO-based protocols such as Bitcoin, Bitcoin Cash, Litecoin, etc. It **is not** available for Account-based protocols like Ethereum.{/warning}
-spec create_coins_transaction_request_from_wallet(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_create_coins_transaction_request_from_wallet_r:cryptoapis_create_coins_transaction_request_from_wallet_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_coins_transaction_request_from_wallet(Ctx, Blockchain, Network, WalletId) ->
    create_coins_transaction_request_from_wallet(Ctx, Blockchain, Network, WalletId, #{}).

-spec create_coins_transaction_request_from_wallet(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_create_coins_transaction_request_from_wallet_r:cryptoapis_create_coins_transaction_request_from_wallet_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_coins_transaction_request_from_wallet(Ctx, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/transaction-requests">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisCreateCoinsTransactionRequestFromWalletRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Tokens Transaction Request from Address
%% Through this endpoint users can make a single token transaction.    {warning}This applies only to **fungible** tokens, **not** NFTs (non-fungible tokens).{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec create_tokens_transaction_request_from_address(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, cryptoapis_create_tokens_transaction_request_from_address_r:cryptoapis_create_tokens_transaction_request_from_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_tokens_transaction_request_from_address(Ctx, Blockchain, Network, SenderAddress, WalletId) ->
    create_tokens_transaction_request_from_address(Ctx, Blockchain, Network, SenderAddress, WalletId, #{}).

-spec create_tokens_transaction_request_from_address(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_create_tokens_transaction_request_from_address_r:cryptoapis_create_tokens_transaction_request_from_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_tokens_transaction_request_from_address(Ctx, Blockchain, Network, SenderAddress, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/addresses/", SenderAddress, "/token-transaction-requests">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisCreateTokensTransactionRequestFromAddressRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


