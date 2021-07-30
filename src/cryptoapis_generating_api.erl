-module(cryptoapis_generating_api).

-export([generate_deposit_address/5, generate_deposit_address/6]).

-define(BASE_URL, <<"/v2">>).

%% @doc Generate Deposit Address
%% Through this endpoint customers can generate a new Receiving/Deposit Addresses into their Wallet.
-spec generate_deposit_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_generate_deposit_address_r:cryptoapis_generate_deposit_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
generate_deposit_address(Ctx, Blockchain, Network, WalletId) ->
    generate_deposit_address(Ctx, Blockchain, Network, WalletId, #{}).

-spec generate_deposit_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_generate_deposit_address_r:cryptoapis_generate_deposit_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
generate_deposit_address(Ctx, Blockchain, Network, WalletId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/wallet-as-a-service/wallets/", WalletId, "/", Blockchain, "/", Network, "/addresses">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisGenerateDepositAddressRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


