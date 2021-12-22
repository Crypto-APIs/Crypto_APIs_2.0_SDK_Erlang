-module(cryptoapis_internal_api).

-export([get_internal_transaction_by_transaction_hash_and_operation_id/5, get_internal_transaction_by_transaction_hash_and_operation_id/6,
         list_internal_transaction_details_by_transaction_hash/4, list_internal_transaction_details_by_transaction_hash/5,
         list_internal_transactions_by_address/4, list_internal_transactions_by_address/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Internal Transaction by Transaction Hash and Operation Id
%% Through this endpoint customers can obtain detailed information about a specific Internal Transaction by using the attributes `transactionHash`  (the parent transaction's Hash) and `operationId` (type trace address).    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
-spec get_internal_transaction_by_transaction_hash_and_operation_id(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r:cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_internal_transaction_by_transaction_hash_and_operation_id(Ctx, Blockchain, Network, OperationId, TransactionHash) ->
    get_internal_transaction_by_transaction_hash_and_operation_id(Ctx, Blockchain, Network, OperationId, TransactionHash, #{}).

-spec get_internal_transaction_by_transaction_hash_and_operation_id(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r:cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_internal_transaction_by_transaction_hash_and_operation_id(Ctx, Blockchain, Network, OperationId, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionHash, "/internal/", OperationId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Internal Transaction Details by Transaction Hash
%% Through this endpoint customers can list internal transactions along with their details by a specific attribute `transactionHash`, which is the parent transaction's Hash.    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
-spec list_internal_transaction_details_by_transaction_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_internal_transaction_details_by_transaction_hash_r:cryptoapis_list_internal_transaction_details_by_transaction_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transaction_details_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash) ->
    list_internal_transaction_details_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, #{}).

-spec list_internal_transaction_details_by_transaction_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_internal_transaction_details_by_transaction_hash_r:cryptoapis_list_internal_transaction_details_by_transaction_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transaction_details_by_transaction_hash(Ctx, Blockchain, Network, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionHash, "/internal">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Internal Transactions By Address
%% Through this endpoint customers can list internal transactions by the `address` attribute.
-spec list_internal_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_internal_transactions_by_address_r:cryptoapis_list_internal_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transactions_by_address(Ctx, Blockchain, Network, Address) ->
    list_internal_transactions_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_internal_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_internal_transactions_by_address_r:cryptoapis_list_internal_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transactions_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/internal">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


