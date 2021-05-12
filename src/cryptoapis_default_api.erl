-module(cryptoapis_default_api).

-export([get_contract_details_by_address/4, get_contract_details_by_address/5]).

-define(BASE_URL, "/v2").

%% @doc Get Contract Details by Address
%% This endpoint will return a smart contract details by address, this address is the address of the smart contract. It's not the same as the smart contract creator address.
-spec get_contract_details_by_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_get_contract_details_by_address_response:cryptoapis_get_contract_details_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_contract_details_by_address(Ctx, Blockchain, Network, ContractAddress) ->
    get_contract_details_by_address(Ctx, Blockchain, Network, ContractAddress, #{}).

-spec get_contract_details_by_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_contract_details_by_address_response:cryptoapis_get_contract_details_by_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_contract_details_by_address(Ctx, Blockchain, Network, ContractAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-data/", Blockchain, "/", Network, "/addresses/", ContractAddress, "/contract"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


