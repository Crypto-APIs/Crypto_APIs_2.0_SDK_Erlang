-module(cryptoapis_xrp_ripple_api).

-export([get_latest_mined_xrp_(ripple)_block/2, get_latest_mined_xrp_(ripple)_block/3,
         get_xrp_(ripple)_address_details/3, get_xrp_(ripple)_address_details/4,
         get_xrp_(ripple)_block_details_by_block_hash/3, get_xrp_(ripple)_block_details_by_block_hash/4,
         get_xrp_(ripple)_block_details_by_block_height/3, get_xrp_(ripple)_block_details_by_block_height/4,
         get_xrp_(ripple)_transaction_details_by_transaction_id/3, get_xrp_(ripple)_transaction_details_by_transaction_id/4,
         list_xrp_(ripple)_transactions_by_address/3, list_xrp_(ripple)_transactions_by_address/4,
         list_xrp_(ripple)_transactions_by_address_and_time_range/5, list_xrp_(ripple)_transactions_by_address_and_time_range/6,
         list_xrp_(ripple)_transactions_by_block_hash/3, list_xrp_(ripple)_transactions_by_block_hash/4,
         list_xrp_(ripple)_transactions_by_block_height/3, list_xrp_(ripple)_transactions_by_block_height/4]).

-define(BASE_URL, <<"">>).

%% @doc Get Latest Mined XRP (Ripple) Block
%% Through this endpoint customers can fetch the last mined XRP block in the blockchain, along with its details. These could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec get_latest_mined_xrp_(ripple)_block(ctx:ctx(), binary()) -> {ok, cryptoapis_get_latest_mined_xrp_ripple_block_r:cryptoapis_get_latest_mined_xrp_ripple_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_xrp_(ripple)_block(Ctx, Network) ->
    get_latest_mined_xrp_(ripple)_block(Ctx, Network, #{}).

-spec get_latest_mined_xrp_(ripple)_block(ctx:ctx(), binary(), maps:map()) -> {ok, cryptoapis_get_latest_mined_xrp_ripple_block_r:cryptoapis_get_latest_mined_xrp_ripple_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_xrp_(ripple)_block(Ctx, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/blocks/last">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get XRP (Ripple) Address Details
%% Through this endpoint the customer can receive basic information about a given XRP address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec get_xrp_(ripple)_address_details(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_xrp_ripple_address_details_r:cryptoapis_get_xrp_ripple_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_address_details(Ctx, Network, Address) ->
    get_xrp_(ripple)_address_details(Ctx, Network, Address, #{}).

-spec get_xrp_(ripple)_address_details(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_xrp_ripple_address_details_r:cryptoapis_get_xrp_ripple_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_address_details(Ctx, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/addresses/", Address, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get XRP (Ripple) Block Details By Block Hash
%% Through this endpoint customers can obtain basic information about a given XRP block (a block on the XRP blockchain), specifically by using the `hash` parameter. These block details could include the hash of the specific, the previous and the next block, the number of included transactions, etc.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec get_xrp_(ripple)_block_details_by_block_hash(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_xrp_ripple_block_details_by_block_hash_r:cryptoapis_get_xrp_ripple_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_block_details_by_block_hash(Ctx, Network, BlockHash) ->
    get_xrp_(ripple)_block_details_by_block_hash(Ctx, Network, BlockHash, #{}).

-spec get_xrp_(ripple)_block_details_by_block_hash(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_xrp_ripple_block_details_by_block_hash_r:cryptoapis_get_xrp_ripple_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_block_details_by_block_hash(Ctx, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/blocks/hash/", BlockHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get XRP (Ripple) Block Details By Block Height
%% Through this endpoint customers can obtain basic information about a given XRP block (a block on the XRP blockchain), specifically by using the `height` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec get_xrp_(ripple)_block_details_by_block_height(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_xrp_ripple_block_details_by_block_height_r:cryptoapis_get_xrp_ripple_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_block_details_by_block_height(Ctx, Network, BlockHeight) ->
    get_xrp_(ripple)_block_details_by_block_height(Ctx, Network, BlockHeight, #{}).

-spec get_xrp_(ripple)_block_details_by_block_height(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_xrp_ripple_block_details_by_block_height_r:cryptoapis_get_xrp_ripple_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_block_details_by_block_height(Ctx, Network, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/blocks/height/", BlockHeight, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get XRP (Ripple) Transaction Details By Transaction ID
%% Through this endpoint customers can obtain details about a XRP transaction by the transaction's unique identifier.     Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec get_xrp_(ripple)_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idr:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_transaction_details_by_transaction_id(Ctx, Network, TransactionHash) ->
    get_xrp_(ripple)_transaction_details_by_transaction_id(Ctx, Network, TransactionHash, #{}).

-spec get_xrp_(ripple)_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idr:cryptoapis_get_xrp_ripple_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_xrp_(ripple)_transaction_details_by_transaction_id(Ctx, Network, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/transactions/", TransactionHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List XRP (Ripple) Transactions by Address
%% This endpoint will list XRP transactions by a attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec list_xrp_(ripple)_transactions_by_address(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_address_r:cryptoapis_list_xrp_ripple_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_address(Ctx, Network, Address) ->
    list_xrp_(ripple)_transactions_by_address(Ctx, Network, Address, #{}).

-spec list_xrp_(ripple)_transactions_by_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_address_r:cryptoapis_list_xrp_ripple_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_address(Ctx, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/addresses/", Address, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset', 'transactionType'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List XRP (Ripple) Transactions By Address And Time Range
%% Тhis endpoint lists XRP transactions by the attribute `address` and the query parameters `fromTimestamp` and `toTimestamp`  which gives customers the opportunity to filter the results by a specified time period.
-spec list_xrp_(ripple)_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), integer(), integer()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_address_and_time_range_r:cryptoapis_list_xrp_ripple_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_address_and_time_range(Ctx, Network, Address, FromTimestamp, ToTimestamp) ->
    list_xrp_(ripple)_transactions_by_address_and_time_range(Ctx, Network, Address, FromTimestamp, ToTimestamp, #{}).

-spec list_xrp_(ripple)_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), integer(), integer(), maps:map()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_address_and_time_range_r:cryptoapis_list_xrp_ripple_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_address_and_time_range(Ctx, Network, Address, FromTimestamp, ToTimestamp, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/addresses/", Address, "/transactions-by-time-range">>],
    QS = lists:flatten([{<<"fromTimestamp">>, FromTimestamp}, {<<"toTimestamp">>, ToTimestamp}])++cryptoapis_utils:optional_params(['context', 'limit', 'offset', 'transactionType'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List XRP (Ripple) Transactions By Block Hash
%% This endpoint will list transactions by an attribute `blockHash`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec list_xrp_(ripple)_transactions_by_block_hash(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_block_hash_r:cryptoapis_list_xrp_ripple_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_block_hash(Ctx, Network, BlockHash) ->
    list_xrp_(ripple)_transactions_by_block_hash(Ctx, Network, BlockHash, #{}).

-spec list_xrp_(ripple)_transactions_by_block_hash(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_block_hash_r:cryptoapis_list_xrp_ripple_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_block_hash(Ctx, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/blocks/hash/", BlockHash, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List XRP (Ripple) Transactions By Block Height
%% This endpoint will list transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.    Since XRP is a different blockchain than Bitcoin and Ethereum, it isn't unified.
-spec list_xrp_(ripple)_transactions_by_block_height(ctx:ctx(), binary(), integer()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_block_height_r:cryptoapis_list_xrp_ripple_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_block_height(Ctx, Network, BlockHeight) ->
    list_xrp_(ripple)_transactions_by_block_height(Ctx, Network, BlockHeight, #{}).

-spec list_xrp_(ripple)_transactions_by_block_height(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, cryptoapis_list_xrp_ripple_transactions_by_block_height_r:cryptoapis_list_xrp_ripple_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_xrp_(ripple)_transactions_by_block_height(Ctx, Network, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/xrp-specific/", Network, "/blocks/height/", BlockHeight, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


