-module(cryptoapis_zilliqa_api).

-export([get_latest_mined_zilliqa_block/2, get_latest_mined_zilliqa_block/3,
         get_zilliqa_address_details/3, get_zilliqa_address_details/4,
         get_zilliqa_block_details_by_block_hash/3, get_zilliqa_block_details_by_block_hash/4,
         get_zilliqa_block_details_by_block_height/3, get_zilliqa_block_details_by_block_height/4,
         get_zilliqa_transaction_details_by_transaction_id/3, get_zilliqa_transaction_details_by_transaction_id/4,
         list_zilliqa_transactions_by_address/3, list_zilliqa_transactions_by_address/4,
         list_zilliqa_transactions_by_block_hash/3, list_zilliqa_transactions_by_block_hash/4,
         list_zilliqa_transactions_by_block_height/3, list_zilliqa_transactions_by_block_height/4]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Latest Mined Zilliqa Block
%% Through this endpoint users can obtain information on the latest block that has been mined on the Zilliqa blockchain. Data could include the current and previous block hashes, transaction count, and more.
-spec get_latest_mined_zilliqa_block(ctx:ctx(), binary()) -> {ok, cryptoapis_get_latest_mined_zilliqa_block_r:cryptoapis_get_latest_mined_zilliqa_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_zilliqa_block(Ctx, Network) ->
    get_latest_mined_zilliqa_block(Ctx, Network, #{}).

-spec get_latest_mined_zilliqa_block(ctx:ctx(), binary(), maps:map()) -> {ok, cryptoapis_get_latest_mined_zilliqa_block_r:cryptoapis_get_latest_mined_zilliqa_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_latest_mined_zilliqa_block(Ctx, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/blocks/last">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Zilliqa Address Details
%% Through this endpoint customers can obtain information address details from the Zilliqa blockchain.
-spec get_zilliqa_address_details(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_zilliqa_address_details_r:cryptoapis_get_zilliqa_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_address_details(Ctx, Network, Address) ->
    get_zilliqa_address_details(Ctx, Network, Address, #{}).

-spec get_zilliqa_address_details(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_zilliqa_address_details_r:cryptoapis_get_zilliqa_address_details_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_address_details(Ctx, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/addresses/", Address, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Zilliqa Block Details By Block Hash
%% Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Hash parameter.
-spec get_zilliqa_block_details_by_block_hash(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_zilliqa_block_details_by_block_hash_r:cryptoapis_get_zilliqa_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_block_details_by_block_hash(Ctx, Network, BlockHash) ->
    get_zilliqa_block_details_by_block_hash(Ctx, Network, BlockHash, #{}).

-spec get_zilliqa_block_details_by_block_hash(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_zilliqa_block_details_by_block_hash_r:cryptoapis_get_zilliqa_block_details_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_block_details_by_block_hash(Ctx, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/blocks/hash/", BlockHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Zilliqa Block Details By Block Height
%% Through this endpoint customers can obtain block details from the Zilliqa blockchain by providing the block Height parameter.
-spec get_zilliqa_block_details_by_block_height(ctx:ctx(), binary(), integer()) -> {ok, cryptoapis_get_zilliqa_block_details_by_block_height_r:cryptoapis_get_zilliqa_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_block_details_by_block_height(Ctx, Network, BlockHeight) ->
    get_zilliqa_block_details_by_block_height(Ctx, Network, BlockHeight, #{}).

-spec get_zilliqa_block_details_by_block_height(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, cryptoapis_get_zilliqa_block_details_by_block_height_r:cryptoapis_get_zilliqa_block_details_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_block_details_by_block_height(Ctx, Network, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/blocks/height/", BlockHeight, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Zilliqa Transaction Details by Transaction ID
%% Through this endpoint customers can obtain transaction details on the Zilliqa blockchain by providing a Transaction ID parameter.
-spec get_zilliqa_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_zilliqa_transaction_details_by_transaction_idr:cryptoapis_get_zilliqa_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_transaction_details_by_transaction_id(Ctx, Network, TransactionHash) ->
    get_zilliqa_transaction_details_by_transaction_id(Ctx, Network, TransactionHash, #{}).

-spec get_zilliqa_transaction_details_by_transaction_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_zilliqa_transaction_details_by_transaction_idr:cryptoapis_get_zilliqa_transaction_details_by_transaction_idr(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_zilliqa_transaction_details_by_transaction_id(Ctx, Network, TransactionHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/transactions/", TransactionHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Zilliqa Transactions by Address
%% Through this endpoint customers can list transactions on the Zilliqa blockchain by the address parameter.
-spec list_zilliqa_transactions_by_address(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_zilliqa_transactions_by_address_r:cryptoapis_list_zilliqa_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_address(Ctx, Network, Address) ->
    list_zilliqa_transactions_by_address(Ctx, Network, Address, #{}).

-spec list_zilliqa_transactions_by_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_zilliqa_transactions_by_address_r:cryptoapis_list_zilliqa_transactions_by_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_address(Ctx, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/addresses/", Address, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Zilliqa Transactions By Block Hash
%% Through this endpoint customers can list transactions on the Zilliqa blockchain by the block hash parameter.
-spec list_zilliqa_transactions_by_block_hash(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_zilliqa_transactions_by_block_hash_r:cryptoapis_list_zilliqa_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_block_hash(Ctx, Network, BlockHash) ->
    list_zilliqa_transactions_by_block_hash(Ctx, Network, BlockHash, #{}).

-spec list_zilliqa_transactions_by_block_hash(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_zilliqa_transactions_by_block_hash_r:cryptoapis_list_zilliqa_transactions_by_block_hash_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_block_hash(Ctx, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/blocks/hash/", BlockHash, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Zilliqa Transactions By Block Height
%% Through this endpoint customers can list transactions on the Zilliqa blockchain by the block height parameter.
-spec list_zilliqa_transactions_by_block_height(ctx:ctx(), binary(), integer()) -> {ok, cryptoapis_list_zilliqa_transactions_by_block_height_r:cryptoapis_list_zilliqa_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_block_height(Ctx, Network, BlockHeight) ->
    list_zilliqa_transactions_by_block_height(Ctx, Network, BlockHeight, #{}).

-spec list_zilliqa_transactions_by_block_height(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, cryptoapis_list_zilliqa_transactions_by_block_height_r:cryptoapis_list_zilliqa_transactions_by_block_height_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_zilliqa_transactions_by_block_height(Ctx, Network, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-data/zilliqa-specific/", Network, "/blocks/height/", BlockHeight, "/transactions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


