-module(cryptoapis_validating_api).

-export([validate_address/4, validate_address/5]).

-define(BASE_URL, <<"/v2">>).

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


