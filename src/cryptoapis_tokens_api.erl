-module(cryptoapis_tokens_api).

-export([get_token_details_by_contract_address/4, get_token_details_by_contract_address/5,
         list_confirmed_tokens_transfers_by_address/4, list_confirmed_tokens_transfers_by_address/5,
         list_tokens_by_address/4, list_tokens_by_address/5,
         list_tokens_transfers_by_transaction_hash/4, list_tokens_transfers_by_transaction_hash/5,
         list_unconfirmed_tokens_transfers_by_address/4, list_unconfirmed_tokens_transfers_by_address/5]).

-define(BASE_URL, <<"">>).

%% @doc Get Token Details by Contract Address
%% Though this endpoint customers can obtain information about token details. This can be done by providing the `contact address` parameter.    {note}This address is **not** the same as the smart contract creator address.{/note}
-spec get_token_details_by_contract_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_token_details_by_contract_address_r:cryptoapis_get_token_details_by_contract_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_token_details_by_contract_address(Ctx, Blockchain, Network, ContractAddress) ->
    get_token_details_by_contract_address(Ctx, Blockchain, Network, ContractAddress, #{}).

-spec get_token_details_by_contract_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_token_details_by_contract_address_r:cryptoapis_get_token_details_by_contract_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_token_details_by_contract_address(Ctx, Blockchain, Network, ContractAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", ContractAddress, "/contract">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Confirmed Tokens Transfers By Address
%% Through this endpoint customers can obtain a list with **confirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}
-spec list_confirmed_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_confirmed_tokens_transfers_by_address_r:cryptoapis_list_confirmed_tokens_transfers_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address) ->
    list_confirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_confirmed_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_confirmed_tokens_transfers_by_address_r:cryptoapis_list_confirmed_tokens_transfers_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens-transfers">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Tokens By Address
%% Through this endpoint customers can obtain token data by providing an attribute - `address`.  The information that can be returned can include the contract address, the token symbol, type and balance.
-spec list_tokens_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_tokens_by_address_r:cryptoapis_list_tokens_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_by_address(Ctx, Blockchain, Network, Address) ->
    list_tokens_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_tokens_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_by_address_r:cryptoapis_list_tokens_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Tokens Transfers By Transaction Hash
%% Through this endpoint customers can obtain a list with token transfers by the `transactionHash` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
-spec list_tokens_transfers_by_transaction_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_tokens_transfers_by_transaction_hash_r:cryptoapis_list_tokens_transfers_by_transaction_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash) ->
    list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, #{}).

-spec list_tokens_transfers_by_transaction_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_transfers_by_transaction_hash_r:cryptoapis_list_tokens_transfers_by_transaction_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionHash, "/tokens-transfers">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Unconfirmed Tokens Transfers By Address
%% Through this endpoint customers can obtain a list with **unconfirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **unconfirmed tokens** not coins.{/note}
-spec list_unconfirmed_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_unconfirmed_tokens_transfers_by_address_r:cryptoapis_list_unconfirmed_tokens_transfers_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address) ->
    list_unconfirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_unconfirmed_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_unconfirmed_tokens_transfers_by_address_r:cryptoapis_list_unconfirmed_tokens_transfers_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens-transfers-unconfirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


