-module(cryptoapis_automatic_coins_forwarding_api).

-export([create_automatic_coins_forwarding/4, create_automatic_coins_forwarding/5,
         delete_automatic_coins_forwarding/4, delete_automatic_coins_forwarding/5,
         list_coins_forwarding_automations/3, list_coins_forwarding_automations/4]).

-define(BASE_URL, <<"/v2">>).

%% @doc Create Automatic Coins Forwarding
%% Through this endpoint customers can set up an automatic forwarding function specifically for coins (**not** tokens). They can have a `toAddress` which is essentially the main address and the destination for the automatic coins forwarding.     There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the coins once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    The response of this endpoint contains an attribute `fromAddress` which can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new `fromAddress` each time.{/note}
-spec create_automatic_coins_forwarding(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_create_automatic_coins_forwarding_r:cryptoapis_create_automatic_coins_forwarding_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_automatic_coins_forwarding(Ctx, Blockchain, Network) ->
    create_automatic_coins_forwarding(Ctx, Blockchain, Network, #{}).

-spec create_automatic_coins_forwarding(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_create_automatic_coins_forwarding_r:cryptoapis_create_automatic_coins_forwarding_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_automatic_coins_forwarding(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-automations/", Blockchain, "/", Network, "/coins-forwarding/automations">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisCreateAutomaticCoinsForwardingRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Automatic Coins Forwarding
%% Through this endpoint customers can delete a forwarding function they have set for **coins** (**not** tokens).    By setting a `fromAddress` and a `toAddress`, and specifying the amount, coins can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
-spec delete_automatic_coins_forwarding(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_delete_automatic_coins_forwarding_r:cryptoapis_delete_automatic_coins_forwarding_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_automatic_coins_forwarding(Ctx, Blockchain, Network, ReferenceId) ->
    delete_automatic_coins_forwarding(Ctx, Blockchain, Network, ReferenceId, #{}).

-spec delete_automatic_coins_forwarding(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_delete_automatic_coins_forwarding_r:cryptoapis_delete_automatic_coins_forwarding_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_automatic_coins_forwarding(Ctx, Blockchain, Network, ReferenceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = [<<"/blockchain-automations/", Blockchain, "/", Network, "/coins-forwarding/automations/", ReferenceId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Coins Forwarding Automations
%% Through this endpoint customers can list all of their **coins** forwarding automations (**not** tokens).    Customers can set up automatic forwarding functions for coins by setting a `fromAddress` and a `toAddress`, and specifying the amount that can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
-spec list_coins_forwarding_automations(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_coins_forwarding_automations_r:cryptoapis_list_coins_forwarding_automations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_coins_forwarding_automations(Ctx, Blockchain, Network) ->
    list_coins_forwarding_automations(Ctx, Blockchain, Network, #{}).

-spec list_coins_forwarding_automations(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_coins_forwarding_automations_r:cryptoapis_list_coins_forwarding_automations_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_coins_forwarding_automations(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-automations/", Blockchain, "/", Network, "/coins-forwarding/automations">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


