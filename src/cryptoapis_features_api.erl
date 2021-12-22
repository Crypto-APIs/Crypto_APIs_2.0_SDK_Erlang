-module(cryptoapis_features_api).

-export([broadcast_locally_signed_transaction/4, broadcast_locally_signed_transaction/5,
         get_eip_1559_fee_recommendations/3, get_eip_1559_fee_recommendations/4,
         validate_address/4, validate_address/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Broadcast Locally Signed Transaction
%% Through this endpoint customers can broadcast transactions that have been already signed locally. Instead of using a node for broadcasting a signed transaction users can use this endpoint. We then keep the user posted about the status by sending you a callback with a success or failure status.    {warning}This can be prepared and signed **only** locally, not through the API. We can provide support only for the process of broadcasting.{/warning}
-spec broadcast_locally_signed_transaction(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_broadcast_locally_signed_transaction_r:cryptoapis_broadcast_locally_signed_transaction_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
broadcast_locally_signed_transaction(Ctx, Blockchain, Network) ->
    broadcast_locally_signed_transaction(Ctx, Blockchain, Network, #{}).

-spec broadcast_locally_signed_transaction(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_broadcast_locally_signed_transaction_r:cryptoapis_broadcast_locally_signed_transaction_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
broadcast_locally_signed_transaction(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/transactions/broadcast">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisBroadcastLocallySignedTransactionRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get EIP 1559 Fee Recommendations
%% Through this endpoint customers can obtain fee recommendations specifically for EIP 1559.
-spec get_eip_1559_fee_recommendations(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_eip1559_fee_recommendations_r:cryptoapis_get_eip1559_fee_recommendations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_eip_1559_fee_recommendations(Ctx, Network, Blockchain) ->
    get_eip_1559_fee_recommendations(Ctx, Network, Blockchain, #{}).

-spec get_eip_1559_fee_recommendations(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_eip1559_fee_recommendations_r:cryptoapis_get_eip1559_fee_recommendations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_eip_1559_fee_recommendations(Ctx, Network, Blockchain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/fees/eip1559">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate Address
%% This endpoint checks user public addresses whether they are valid or not.
-spec validate_address(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_validate_address_r:cryptoapis_validate_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
validate_address(Ctx, Blockchain, Network) ->
    validate_address(Ctx, Blockchain, Network, #{}).

-spec validate_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_validate_address_r:cryptoapis_validate_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
validate_address(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/addresses/validate">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisValidateAddressRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


