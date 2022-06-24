-module(cryptoapis_callback_data_api).

-export([get_address_details_from_callback/4, get_address_details_from_callback/5,
         get_block_details_by_block_hash_from_callback/4, get_block_details_by_block_hash_from_callback/5,
         get_block_details_by_block_height_from_callback/4, get_block_details_by_block_height_from_callback/5,
         get_transaction_details_by_transaction_id_from_callback/4, get_transaction_details_by_transaction_id_from_callback/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Get Address Details From Callback
%% This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific address from the Event it takes part in only if the address already exists in the blockchain events subscriptions. It applies only for Events related to that customer.
-spec get_address_details_from_callback(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_address_details_from_callback_r:cryptoapis_get_address_details_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_address_details_from_callback(Ctx, Blockchain, Network, Address) ->
    get_address_details_from_callback(Ctx, Blockchain, Network, Address, #{}).

-spec get_address_details_from_callback(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_address_details_from_callback_r:cryptoapis_get_address_details_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_address_details_from_callback(Ctx, Blockchain, Network, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/addresses/", Address, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Block Details By Block Hash From Callback
%% This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific block by providing the `blockHash` attribute from the Event it takes part in and after making check that the customer in question does have a subscription for this block. It applies only for Events related to that user.
-spec get_block_details_by_block_hash_from_callback(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_block_details_by_block_hash_from_callback_r:cryptoapis_get_block_details_by_block_hash_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_hash_from_callback(Ctx, Blockchain, Network, BlockHash) ->
    get_block_details_by_block_hash_from_callback(Ctx, Blockchain, Network, BlockHash, #{}).

-spec get_block_details_by_block_hash_from_callback(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_block_details_by_block_hash_from_callback_r:cryptoapis_get_block_details_by_block_hash_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_hash_from_callback(Ctx, Blockchain, Network, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/blocks/hash/", BlockHash, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Block Details By Block Height From Callback
%% This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for the specific Block by providing the `blockHeight` attribute from the Event it takes part in. It applies only for Events related to that user.
-spec get_block_details_by_block_height_from_callback(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_block_details_by_block_height_from_callback_r:cryptoapis_get_block_details_by_block_height_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_height_from_callback(Ctx, Blockchain, Network, BlockHeight) ->
    get_block_details_by_block_height_from_callback(Ctx, Blockchain, Network, BlockHeight, #{}).

-spec get_block_details_by_block_height_from_callback(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_block_details_by_block_height_from_callback_r:cryptoapis_get_block_details_by_block_height_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_block_details_by_block_height_from_callback(Ctx, Blockchain, Network, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/blocks/height/", BlockHeight, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Transaction Details By Transaction ID From Callback
%% This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific transaction from the Event it takes part in by providing the `transactionId` attribute. It applies only for Events related to that user.
-spec get_transaction_details_by_transaction_id_from_callback(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_transaction_details_by_transaction_id_from_callback_r:cryptoapis_get_transaction_details_by_transaction_id_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_details_by_transaction_id_from_callback(Ctx, Blockchain, Network, TransactionId) ->
    get_transaction_details_by_transaction_id_from_callback(Ctx, Blockchain, Network, TransactionId, #{}).

-spec get_transaction_details_by_transaction_id_from_callback(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_transaction_details_by_transaction_id_from_callback_r:cryptoapis_get_transaction_details_by_transaction_id_from_callback_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_transaction_details_by_transaction_id_from_callback(Ctx, Blockchain, Network, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/transactions/", TransactionId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


