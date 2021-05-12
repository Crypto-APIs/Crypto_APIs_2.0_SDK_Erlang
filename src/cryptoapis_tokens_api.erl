-module(cryptoapis_tokens_api).

-export([list_tokens_by_address/4, list_tokens_by_address/5,
         list_tokens_transfers_by_address/4, list_tokens_transfers_by_address/5,
         list_tokens_transfers_by_transaction_hash/4, list_tokens_transfers_by_transaction_hash/5]).

-define(BASE_URL, "/v2").

%% @doc List Tokens By Address
%% Through this endpoint customers can obtain token data by providing an attribute - `address`.  The information that can be returned can include the contract address, the token symbol, type and balance.
-spec list_tokens_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_tokens_by_address_response:cryptoapis_list_tokens_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_by_address(Ctx, Blockchain, Network, Address) ->
    list_tokens_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_tokens_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_by_address_response:cryptoapis_list_tokens_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Tokens Transfers By Address
%% Through this endpoint customers can obtain a list with token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
-spec list_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_tokens_transfers_by_address_response:cryptoapis_list_tokens_transfers_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_address(Ctx, Blockchain, Network, Address) ->
    list_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_tokens_transfers_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_transfers_by_address_response:cryptoapis_list_tokens_transfers_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens-transfers"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Tokens Transfers By Transaction Hash
%% Through this endpoint customers can obtain a list with token transfers by the `transactionHash` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
-spec list_tokens_transfers_by_transaction_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_tokens_transfers_by_transaction_hash_response:cryptoapis_list_tokens_transfers_by_transaction_hash_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash) ->
    list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, #{}).

-spec list_tokens_transfers_by_transaction_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_transfers_by_transaction_hash_response:cryptoapis_list_tokens_transfers_by_transaction_hash_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_transfers_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionHash, "/tokens-transfers"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


