-module(cryptoapis_unified_endpoints_api).

-export([estimate_transaction_smart_fee/3, estimate_transaction_smart_fee/4,
         get_address_details/4, get_address_details/5,
         get_block_details_by_block_hash/4, get_block_details_by_block_hash/5,
         get_block_details_by_block_height/4, get_block_details_by_block_height/5,
         get_fee_recommendations/3, get_fee_recommendations/4,
         get_last_mined_block/3, get_last_mined_block/4,
         get_next_available_nonce/4, get_next_available_nonce/5,
         get_raw_transaction_data/4, get_raw_transaction_data/5,
         get_transaction_details_by_transaction_id/4, get_transaction_details_by_transaction_id/5,
         list_all_unconfirmed_transactions/3, list_all_unconfirmed_transactions/4,
         list_confirmed_tokens_transfers_by_address_and_time_range/6, list_confirmed_tokens_transfers_by_address_and_time_range/7,
         list_confirmed_transactions_by_address/4, list_confirmed_transactions_by_address/5,
         list_confirmed_transactions_by_address_and_time_range/6, list_confirmed_transactions_by_address_and_time_range/7,
         list_internal_transactions_by_address_and_time_range/6, list_internal_transactions_by_address_and_time_range/7,
         list_latest_mined_blocks/4, list_latest_mined_blocks/5,
         list_transactions_by_block_hash/4, list_transactions_by_block_hash/5,
         list_transactions_by_block_height/4, list_transactions_by_block_height/5,
         list_unconfirmed_transactions_by_address/4, list_unconfirmed_transactions_by_address/5,
         list_unspent_transaction_outputs_by_address/4, list_unspent_transaction_outputs_by_address/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Estimate Transaction Smart Fee
%% Through this endpoint, customers can estimate the approximate fee per kilobyte needed for a transaction to begin confirmation within the `confirmationTarget` blocks when possible. After which it will return the number of blocks for which the estimate is valid.
-spec estimate_transaction_smart_fee(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_estimate_transaction_smart_fee_r:cryptoapis_estimate_transaction_smart_fee_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_transaction_smart_fee(Ctx, Blockchain, Network) ->
    estimate_transaction_smart_fee(Ctx, Blockchain, Network, #{}).

-spec estimate_transaction_smart_fee(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_estimate_transaction_smart_fee_r:cryptoapis_estimate_transaction_smart_fee_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_transaction_smart_fee(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/estimate-transaction-smart-fee">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'confirmationTarget', 'estimateMode'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Address Details
%% Through this endpoint the customer can receive basic information about a given address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here. Applies only for coins.
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

%% @doc Get Last Mined Block
%% Through this endpoint customers can fetch the last mined block in a specific blockchain network, along with its details. These could include the hash of the specific, the previous and the next block, its transactions count, its height, etc.     Blockchain specific data is information such as version, nonce, size, bits, merkleroot, etc.
-spec get_last_mined_block(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_last_mined_block_r:cryptoapis_get_last_mined_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_last_mined_block(Ctx, Blockchain, Network) ->
    get_last_mined_block(Ctx, Blockchain, Network, #{}).

-spec get_last_mined_block(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_last_mined_block_r:cryptoapis_get_last_mined_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_last_mined_block(Ctx, Blockchain, Network, Optional) ->
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

%% @doc Get Next Available Nonce
%% Through this endpoint customers can get information about the next available nonce by providing the specific blockchain, network and address.
-spec get_next_available_nonce(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_next_available_nonce_r:cryptoapis_get_next_available_nonce_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_next_available_nonce(Ctx, Blockchain, Network, Address) ->
    get_next_available_nonce(Ctx, Blockchain, Network, Address, #{}).

-spec get_next_available_nonce(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_next_available_nonce_r:cryptoapis_get_next_available_nonce_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_next_available_nonce(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/next-available-nonce">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Raw Transaction Data
%% Through this endpoint customers can get information on a transaction in its raw format by providing its `transactionId`.
-spec get_raw_transaction_data(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_raw_transaction_data_r:cryptoapis_get_raw_transaction_data_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_raw_transaction_data(Ctx, Blockchain, Network, TransactionId) ->
    get_raw_transaction_data(Ctx, Blockchain, Network, TransactionId, #{}).

-spec get_raw_transaction_data(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_raw_transaction_data_r:cryptoapis_get_raw_transaction_data_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_raw_transaction_data(Ctx, Blockchain, Network, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/transactions/", TransactionId, "/raw-data">>],
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

%% @doc List All Unconfirmed Transactions
%% Through this endpoint customers can list all **unconfirmed**  transactions for a specified blockchain and network.
-spec list_all_unconfirmed_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_all_unconfirmed_transactions_r:cryptoapis_list_all_unconfirmed_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_all_unconfirmed_transactions(Ctx, Blockchain, Network) ->
    list_all_unconfirmed_transactions(Ctx, Blockchain, Network, #{}).

-spec list_all_unconfirmed_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_all_unconfirmed_transactions_r:cryptoapis_list_all_unconfirmed_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_all_unconfirmed_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/address-transactions-unconfirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Confirmed Tokens Transfers By Address And Time Range
%% Through this endpoint customers can obtain a list with **confirmed** token transfers by the `address` attribute and the query parameters `fromTimestamp` and `toTimestamp` which gives customers the opportunity to filter the results by a specified time period.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}
-spec list_confirmed_tokens_transfers_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer()) -> {ok, cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_r:cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_tokens_transfers_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp) ->
    list_confirmed_tokens_transfers_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, #{}).

-spec list_confirmed_tokens_transfers_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer(), maps:map()) -> {ok, cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_r:cryptoapis_list_confirmed_tokens_transfers_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_tokens_transfers_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/tokens-transfers-by-time-range">>],
    QS = lists:flatten([{<<"fromTimestamp">>, FromTimestamp}, {<<"toTimestamp">>, ToTimestamp}])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Confirmed Transactions By Address
%% This endpoint will list transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.
-spec list_confirmed_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_confirmed_transactions_by_address_r:cryptoapis_list_confirmed_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_transactions_by_address(Ctx, Blockchain, Network, Address) ->
    list_confirmed_transactions_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_confirmed_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_confirmed_transactions_by_address_r:cryptoapis_list_confirmed_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_transactions_by_address(Ctx, Blockchain, Network, Address, Optional) ->
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

%% @doc List Confirmed Transactions By Address And Time Range
%% This endpoint will list confirmed transactions by the attribute `address` and the query parameters `fromTimestamp` and `toTimestamp` which gives customers the opportunity to filter the results by a specified time period.
-spec list_confirmed_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer()) -> {ok, cryptoapis_list_confirmed_transactions_by_address_and_time_range_r:cryptoapis_list_confirmed_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp) ->
    list_confirmed_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, #{}).

-spec list_confirmed_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer(), maps:map()) -> {ok, cryptoapis_list_confirmed_transactions_by_address_and_time_range_r:cryptoapis_list_confirmed_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_confirmed_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/transactions-by-time-range">>],
    QS = lists:flatten([{<<"fromTimestamp">>, FromTimestamp}, {<<"toTimestamp">>, ToTimestamp}])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Internal Transactions By Address And Time Range
%% Through this endpoint customers can list internal transactions by the `address` attribute and the query parameters `fromTimestamp` and `toTimestamp`  which gives customers the opportunity to filter the results by a specified time period.
-spec list_internal_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer()) -> {ok, cryptoapis_list_internal_transactions_by_address_and_time_range_r:cryptoapis_list_internal_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp) ->
    list_internal_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, #{}).

-spec list_internal_transactions_by_address_and_time_range(ctx:ctx(), binary(), binary(), binary(), integer(), integer(), maps:map()) -> {ok, cryptoapis_list_internal_transactions_by_address_and_time_range_r:cryptoapis_list_internal_transactions_by_address_and_time_range_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_internal_transactions_by_address_and_time_range(Ctx, Blockchain, Network, Address, FromTimestamp, ToTimestamp, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/internal-by-time-range">>],
    QS = lists:flatten([{<<"fromTimestamp">>, FromTimestamp}, {<<"toTimestamp">>, ToTimestamp}])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Latest Mined Blocks
%% Through this endpoint customers can list **up to 50** from the latest blocks that were mined.
-spec list_latest_mined_blocks(ctx:ctx(), binary(), binary(), integer()) -> {ok, cryptoapis_list_latest_mined_blocks_r:cryptoapis_list_latest_mined_blocks_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_latest_mined_blocks(Ctx, Network, Blockchain, Count) ->
    list_latest_mined_blocks(Ctx, Network, Blockchain, Count, #{}).

-spec list_latest_mined_blocks(ctx:ctx(), binary(), binary(), integer(), maps:map()) -> {ok, cryptoapis_list_latest_mined_blocks_r:cryptoapis_list_latest_mined_blocks_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_latest_mined_blocks(Ctx, Network, Blockchain, Count, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/blocks/last/", Count, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Transactions by Block Hash
%% This endpoint will list transactions by an attribute `transactionHash`. The transactions listed will detail additional information such as addresses, height, time of creation in Unix timestamp, etc.
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
%% This endpoint will list transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.
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

%% @doc List Unconfirmed Transactions by Address
%% Through this endpoint customers can list transactions by `address` that are **unconfirmed**.
-spec list_unconfirmed_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_unconfirmed_transactions_by_address_r:cryptoapis_list_unconfirmed_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_transactions_by_address(Ctx, Blockchain, Network, Address) ->
    list_unconfirmed_transactions_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_unconfirmed_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_unconfirmed_transactions_by_address_r:cryptoapis_list_unconfirmed_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_transactions_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/address-transactions-unconfirmed/", Address, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Unspent Transaction Outputs By Address
%% Through this endpoint customers can list their transactions' unspent outputs by `address`.
-spec list_unspent_transaction_outputs_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_unspent_transaction_outputs_by_address_r:cryptoapis_list_unspent_transaction_outputs_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unspent_transaction_outputs_by_address(Ctx, Blockchain, Network, Address) ->
    list_unspent_transaction_outputs_by_address(Ctx, Blockchain, Network, Address, #{}).

-spec list_unspent_transaction_outputs_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_unspent_transaction_outputs_by_address_r:cryptoapis_list_unspent_transaction_outputs_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unspent_transaction_outputs_by_address(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/unspent-outputs">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


