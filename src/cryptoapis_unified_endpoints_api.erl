-module(cryptoapis_unified_endpoints_api).

-export([get_address_details/4, get_address_details/5,
         get_block_details_by_block_hash/4, get_block_details_by_block_hash/5,
         get_block_details_by_block_height/4, get_block_details_by_block_height/5,
         get_fee_recommendations/3, get_fee_recommendations/4,
         get_latest_mined_block/3, get_latest_mined_block/4,
         get_transaction_details_by_transaction_id/4, get_transaction_details_by_transaction_id/5,
         list_transactions_by_address/4, list_transactions_by_address/5,
         list_transactions_by_block_hash/4, list_transactions_by_block_hash/5,
         list_transactions_by_block_height/4, list_transactions_by_block_height/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Address Details
%% Through this endpoint the customer can receive basic information about a given address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.
-spec get_address_details(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_address_details_r:cryptoapis_get_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_address_details(Ctx, Blockchain, Network, Address) ->
    get_address_details(Ctx, Blockchain, Network, Address, #{}).

-spec get_address_details(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_address_details_r:cryptoapis_get_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_address_details(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Block Details By Block Hash
%% Through this endpoint customers can obtain basic information about a given mined block, specifically by using the `hash` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.
-spec get_block_details_by_block_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_block_details_by_block_hash_r:cryptoapis_get_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_hash(Ctx, Blockchain, Network, BlockHash) ->
    get_block_details_by_block_hash(Ctx, Blockchain, Network, BlockHash, #{}).

-spec get_block_details_by_block_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_block_details_by_block_hash_r:cryptoapis_get_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_hash(Ctx, Blockchain, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/hash/", BlockHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Block Details By Block Height
%% Through this endpoint customers can obtain basic information about a given mined block, specifically by using the `height` parameter. These block details could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.
-spec get_block_details_by_block_height(ctx:ctx(), binary(), binary(), integer()) -> {ok, cryptoapis_get_block_details_by_block_height_r:cryptoapis_get_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_height(Ctx, Blockchain, Network, Height) ->
    get_block_details_by_block_height(Ctx, Blockchain, Network, Height, #{}).

-spec get_block_details_by_block_height(ctx:ctx(), binary(), binary(), integer(), maps:map()) -> {ok, cryptoapis_get_block_details_by_block_height_r:cryptoapis_get_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_height(Ctx, Blockchain, Network, Height, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/height/", Height, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fee Recommendations
%% Through this endpoint customers can obtain fee recommendations. Our fees recommendations are based on Mempool data which makes them much more accurate than fees based on already mined blocks. Calculations are done in real time live. Using this endpoint customers can get gas price for Ethereum, fee per byte for Bitcoin, etc.
-spec get_fee_recommendations(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_fee_recommendations_r:cryptoapis_get_fee_recommendations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_fee_recommendations(Ctx, Blockchain, Network) ->
    get_fee_recommendations(Ctx, Blockchain, Network, #{}).

-spec get_fee_recommendations(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_fee_recommendations_r:cryptoapis_get_fee_recommendations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_fee_recommendations(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/mempool/fees">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Latest Mined Block
%% Through this endpoint customers can fetch the last mined block in a specific blockchain network, along with its details. These could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.
-spec get_latest_mined_block(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_latest_mined_block_r:cryptoapis_get_latest_mined_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_block(Ctx, Blockchain, Network) ->
    get_latest_mined_block(Ctx, Blockchain, Network, #{}).

-spec get_latest_mined_block(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_latest_mined_block_r:cryptoapis_get_latest_mined_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_block(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/last">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Transaction Details By Transaction ID
%% Through this endpoint customers can obtain details about a transaction by the transaction's unique identifier. In UTXO-based protocols like BTC there are attributes such as `transactionId` and transaction `hash`. They still could be different. In protocols like Ethereum there is only one unique value and it's `hash`.
-spec get_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_transaction_details_by_transaction_idr:cryptoapis_get_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId) ->
    get_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId, #{}).

-spec get_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_transaction_details_by_transaction_idr:cryptoapis_get_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_details_by_transaction_id(Ctx, Blockchain, Network, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Transactions By Address
%% This endpoint will list transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_transactions_by_address_r:cryptoapis_list_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_address(Ctx, Blockchain, Network, Address) ->
    list_transactions_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_transactions_by_address_r:cryptoapis_list_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Transactions by Block Hash
%% This endpoint will list transactions by an attribute `transactionHash`. The transactions listed will detail additional information such as addresses, height, time of creation in Unix timestamp, etc.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_transactions_by_block_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_transactions_by_block_hash_r:cryptoapis_list_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_block_hash(Ctx, Blockchain, Network, BlockHash) ->
    list_transactions_by_block_hash(Ctx, Blockchain, Network, BlockHash, #{}).

-spec list_transactions_by_block_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_transactions_by_block_hash_r:cryptoapis_list_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_block_hash(Ctx, Blockchain, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/hash/", BlockHash, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Transactions by Block Height
%% This endpoint will list transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_transactions_by_block_height(ctx:ctx(), binary(), binary(), integer()) -> {ok, cryptoapis_list_transactions_by_block_height_r:cryptoapis_list_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_block_height(Ctx, Blockchain, Network, Height) ->
    list_transactions_by_block_height(Ctx, Blockchain, Network, Height, #{}).

-spec list_transactions_by_block_height(ctx:ctx(), binary(), binary(), integer(), maps:map()) -> {ok, cryptoapis_list_transactions_by_block_height_r:cryptoapis_list_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_transactions_by_block_height(Ctx, Blockchain, Network, Height, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/height/", Height, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


