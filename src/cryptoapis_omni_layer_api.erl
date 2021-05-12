-module(cryptoapis_omni_layer_api).

-export([get_omni_transaction_details_by_transaction_id_(txid)/4, get_omni_transaction_details_by_transaction_id_(txid)/5,
         get_unconfirmed_omni_transaction_by_transaction_id_(txid)/4, get_unconfirmed_omni_transaction_by_transaction_id_(txid)/5,
         list_omni_tokens_by_address/4, list_omni_tokens_by_address/5,
         list_omni_transactions_by_address/4, list_omni_transactions_by_address/5,
         list_omni_transactions_by_block_hash/4, list_omni_transactions_by_block_hash/5,
         list_omni_transactions_by_block_height/4, list_omni_transactions_by_block_height/5,
         list_unconfirmed_omni_transactions_by_address/4, list_unconfirmed_omni_transactions_by_address/5,
         list_unconfirmed_omni_transactions_by_property_id/4, list_unconfirmed_omni_transactions_by_property_id/5]).

-define(BASE_URL, "/v2").

%% @doc Get Omni Transaction Details By Transaction ID (Txid)
%% Through this endpoint customers can obtain details about an Omni transaction by the transaction's unique identifier. The transaction can return information such as hash, height, time of creation in Unix timestamp, etc.
-spec get_omni_transaction_details_by_transaction_id_(txid)(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_omni_transaction_details_by_transaction_id_txid_response:cryptoapis_get_omni_transaction_details_by_transaction_id_txid_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_omni_transaction_details_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId) ->
    get_omni_transaction_details_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId, #{}).

-spec get_omni_transaction_details_by_transaction_id_(txid)(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_omni_transaction_details_by_transaction_id_txid_response:cryptoapis_get_omni_transaction_details_by_transaction_id_txid_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_omni_transaction_details_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/transactions/", TransactionId, ""],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Unconfirmed Omni Transaction By Transaction ID (Txid)
%% Through this endpoint customers can obtain information on unconfirmed Omni transactions by an attribute `transactionId`. The transaction can have information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.
-spec get_unconfirmed_omni_transaction_by_transaction_id_(txid)(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_unconfirmed_omni_transaction_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId) ->
    get_unconfirmed_omni_transaction_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId, #{}).

-spec get_unconfirmed_omni_transaction_by_transaction_id_(txid)(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response:cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_unconfirmed_omni_transaction_by_transaction_id_(txid)(Ctx, Network, Blockchain, TransactionId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/transactions-unconfirmed/", TransactionId, ""],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Omni Tokens By Address
%% Through this endpoint the customer can receive basic information about a given Omni address based on confirmed/synced blocks only. In the case where there are any incoming or outgoing **unconfirmed** transactions for the specific address, they **will not** be counted or calculated here.
-spec list_omni_tokens_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_omni_tokens_by_address_response:cryptoapis_list_omni_tokens_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_tokens_by_address(Ctx, Network, Blockchain, Address) ->
    list_omni_tokens_by_address(Ctx, Network, Blockchain, Address, #{}).

-spec list_omni_tokens_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_omni_tokens_by_address_response:cryptoapis_list_omni_tokens_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_tokens_by_address(Ctx, Network, Blockchain, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/addresses/", Address, ""],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Omni Transactions By Address
%% This endpoint will list Omni transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.
-spec list_omni_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_omni_transactions_by_address_response:cryptoapis_list_omni_transactions_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_address(Ctx, Network, Blockchain, Address) ->
    list_omni_transactions_by_address(Ctx, Network, Blockchain, Address, #{}).

-spec list_omni_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_omni_transactions_by_address_response:cryptoapis_list_omni_transactions_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_address(Ctx, Network, Blockchain, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/addresses/", Address, "/transactions"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Omni Transactions By Block Hash
%% This endpoint will list Omni transactions by an attribute `transactionHash`. The transactions listed will detail additional information such as addresses, height, time of creation in Unix timestamp, etc.
-spec list_omni_transactions_by_block_hash(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_omni_transactions_by_block_hash_response:cryptoapis_list_omni_transactions_by_block_hash_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_block_hash(Ctx, Network, Blockchain, BlockHash) ->
    list_omni_transactions_by_block_hash(Ctx, Network, Blockchain, BlockHash, #{}).

-spec list_omni_transactions_by_block_hash(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_omni_transactions_by_block_hash_response:cryptoapis_list_omni_transactions_by_block_hash_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_block_hash(Ctx, Network, Blockchain, BlockHash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/blocks/hash/", BlockHash, "/transactions"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Omni Transactions By Block Height
%% This endpoint will list Omni transactions by an attribute `blockHeight`. The transactions listed will detail additional information such as hash, addresses, time of creation in Unix timestamp, etc.
-spec list_omni_transactions_by_block_height(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_omni_transactions_by_block_height_response:cryptoapis_list_omni_transactions_by_block_height_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_block_height(Ctx, Network, Blockchain, BlockHeight) ->
    list_omni_transactions_by_block_height(Ctx, Network, Blockchain, BlockHeight, #{}).

-spec list_omni_transactions_by_block_height(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_omni_transactions_by_block_height_response:cryptoapis_list_omni_transactions_by_block_height_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_omni_transactions_by_block_height(Ctx, Network, Blockchain, BlockHeight, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/blocks/height/", BlockHeight, "/transactions"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Unconfirmed Omni Transactions By Address
%% This endpoint will list unconfirmed Omni transactions by an attribute `address`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.
-spec list_unconfirmed_omni_transactions_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_unconfirmed_omni_transactions_by_address_response:cryptoapis_list_unconfirmed_omni_transactions_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_omni_transactions_by_address(Ctx, Network, Blockchain, Address) ->
    list_unconfirmed_omni_transactions_by_address(Ctx, Network, Blockchain, Address, #{}).

-spec list_unconfirmed_omni_transactions_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_unconfirmed_omni_transactions_by_address_response:cryptoapis_list_unconfirmed_omni_transactions_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_omni_transactions_by_address(Ctx, Network, Blockchain, Address, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/address-transactions-unconfirmed/", Address, ""],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Unconfirmed Omni Transactions By Property ID
%% This endpoint will list unconfirmed Omni transactions by an attribute `propertyId`. The transactions listed will detail additional information such as hash, height, time of creation in Unix timestamp, etc.    Unconfirmed transactions are usually put in the Mempool and await verification so that they can be added to a block.
-spec list_unconfirmed_omni_transactions_by_property_id(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_list_unconfirmed_omni_transactions_by_property_id_response:cryptoapis_list_unconfirmed_omni_transactions_by_property_id_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_omni_transactions_by_property_id(Ctx, Network, Blockchain, PropertyId) ->
    list_unconfirmed_omni_transactions_by_property_id(Ctx, Network, Blockchain, PropertyId, #{}).

-spec list_unconfirmed_omni_transactions_by_property_id(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_unconfirmed_omni_transactions_by_property_id_response:cryptoapis_list_unconfirmed_omni_transactions_by_property_id_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_unconfirmed_omni_transactions_by_property_id(Ctx, Network, Blockchain, PropertyId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/omni/properties/", PropertyId, "/transactions"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


