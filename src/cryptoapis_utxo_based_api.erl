-module(cryptoapis_utxo_based_api).

-export([list_unspent_transaction_outputs_by_address/4, list_unspent_transaction_outputs_by_address/5]).

-define(BASE_URL, <<"/v2">>).

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
    Path = [<<"/blockchain-data/", Blockchain, "/", Network, "/addresses/", Address, "/unspent">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


