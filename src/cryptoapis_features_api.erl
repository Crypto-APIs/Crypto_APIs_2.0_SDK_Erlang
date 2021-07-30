-module(cryptoapis_features_api).

-export([broadcast_locally_signed_transaction/4, broadcast_locally_signed_transaction/5,
         validate_address/4, validate_address/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Broadcast Locally Signed Transaction
%% Through this endpoint customers can broadcast transactions that have been already signed locally. Instead of using a node for broadcasting a signed transaction users can use this endpoint. We then keep the user posted about the status by sending you a callback with a success or failure status.
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


