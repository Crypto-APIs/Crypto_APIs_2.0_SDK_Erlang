-module(cryptoapis_automatic_tokens_forwarding_api).

-export([add_tokens_to_existing_from_address/4, add_tokens_to_existing_from_address/5,
         create_automatic_tokens_forwarding/4, create_automatic_tokens_forwarding/5,
         delete_automatic_tokens_forwarding/4, delete_automatic_tokens_forwarding/5,
         get_fee_address_details/3, get_fee_address_details/4,
         list_tokens_forwarding_automations/3, list_tokens_forwarding_automations/4]).

-define(BASE_URL, "/v2").

%% @doc Add Tokens To Existing fromAddress
%% Through this endpoint customers can add **Automatic Tokens forwardings** to an already existing `fromAddress`. Unlike the \"Create Automatic Tokens Forwarding\" endpoint, where the `fromAddress` is generated each time, with this endpoint customers can add an automation from another token to one and the same `fromAddress`.    The `fromAddress` can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation. The  `toAddress` is essentially the main address and destination for the automatic tokens forwarding.    There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
-spec add_tokens_to_existing_from_address(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_add_tokens_to_existing_from_address_response:cryptoapis_add_tokens_to_existing_from_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
add_tokens_to_existing_from_address(Ctx, Blockchain, Network) ->
    add_tokens_to_existing_from_address(Ctx, Blockchain, Network, #{}).

-spec add_tokens_to_existing_from_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_add_tokens_to_existing_from_address_response:cryptoapis_add_tokens_to_existing_from_address_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
add_tokens_to_existing_from_address(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/blockchain-automations/", Blockchain, "/", Network, "/tokens-forwarding/automations/add-token"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisAddTokensToExistingFromAddressRequestBody,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Automatic Tokens Forwarding
%% Through this endpoint customers can set up an automatic forwarding function specifically for tokens (**not** coins). They can have a `toAddress` which is essentially the main address and the destination for the automatic tokens forwarding.     There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    The response of this endpoint contains an attribute `fromAddress` which can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new `fromAddress` each time.{/note}
-spec create_automatic_tokens_forwarding(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_create_automatic_tokens_forwarding_response:cryptoapis_create_automatic_tokens_forwarding_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_automatic_tokens_forwarding(Ctx, Blockchain, Network) ->
    create_automatic_tokens_forwarding(Ctx, Blockchain, Network, #{}).

-spec create_automatic_tokens_forwarding(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_create_automatic_tokens_forwarding_response:cryptoapis_create_automatic_tokens_forwarding_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
create_automatic_tokens_forwarding(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/blockchain-automations/", Blockchain, "/", Network, "/tokens-forwarding/automations"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisCreateAutomaticTokensForwardingRequestBody,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Automatic Tokens Forwarding
%% Through this endpoint customers can delete a forwarding function they have set for **tokens** (**not** coins).    By setting a `fromAddress` and a `toAddress`, and specifying the amount, tokens can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
-spec delete_automatic_tokens_forwarding(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_delete_automatic_tokens_forwarding_response:cryptoapis_delete_automatic_tokens_forwarding_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_automatic_tokens_forwarding(Ctx, Blockchain, Network, ReferenceId) ->
    delete_automatic_tokens_forwarding(Ctx, Blockchain, Network, ReferenceId, #{}).

-spec delete_automatic_tokens_forwarding(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_delete_automatic_tokens_forwarding_response:cryptoapis_delete_automatic_tokens_forwarding_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_automatic_tokens_forwarding(Ctx, Blockchain, Network, ReferenceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/blockchain-automations/", Blockchain, "/", Network, "/tokens-forwarding/automations/", ReferenceId, ""],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fee Address Details
%% Through this endpoint customers can obtain details about a fee address. Only one fee address per currency per network for a user's account can be set no matter how many tokens or subscriptions they have or want to automatically forward.
-spec get_fee_address_details(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_get_fee_address_details_response:cryptoapis_get_fee_address_details_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_fee_address_details(Ctx, Blockchain, Network) ->
    get_fee_address_details(Ctx, Blockchain, Network, #{}).

-spec get_fee_address_details(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_get_fee_address_details_response:cryptoapis_get_fee_address_details_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
get_fee_address_details(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-automations/", Blockchain, "/", Network, "/tokens-forwarding/fee-addresses"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Tokens Forwarding Automations
%% Through this endpoint customers can list all of their **tokens** forwarding automations (**not** coins).    Customers can set up automatic forwarding functions for tokens by setting a `fromAddress` and a `toAddress`, and specifying the amount that can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".     {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
-spec list_tokens_forwarding_automations(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_tokens_forwarding_automations_response:cryptoapis_list_tokens_forwarding_automations_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_forwarding_automations(Ctx, Blockchain, Network) ->
    list_tokens_forwarding_automations(Ctx, Blockchain, Network, #{}).

-spec list_tokens_forwarding_automations(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_tokens_forwarding_automations_response:cryptoapis_list_tokens_forwarding_automations_response(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_tokens_forwarding_automations(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/blockchain-automations/", Blockchain, "/", Network, "/tokens-forwarding/automations"],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


