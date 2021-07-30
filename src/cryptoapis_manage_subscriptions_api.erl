-module(cryptoapis_manage_subscriptions_api).

-export([delete_blockchain_event_subscription/4, delete_blockchain_event_subscription/5,
         list_blockchain_events_subscriptions/3, list_blockchain_events_subscriptions/4]).

-define(BASE_URL, <<"/v2">>).

%% @doc Delete Blockchain Event Subscription
%% Through this endpoint the customer can delete blockchain event subscriptions they have by attributes `referenceId` and `network`.    Currently Crypto APIs 2.0 offers certain Blockchain event endpoints which allow the user to subscribe for one/a few/all and receive callback notifications when the specific event occurs.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec delete_blockchain_event_subscription(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_delete_blockchain_event_subscription_r:cryptoapis_delete_blockchain_event_subscription_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_blockchain_event_subscription(Ctx, Blockchain, Network, ReferenceId) ->
    delete_blockchain_event_subscription(Ctx, Blockchain, Network, ReferenceId, #{}).

-spec delete_blockchain_event_subscription(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_delete_blockchain_event_subscription_r:cryptoapis_delete_blockchain_event_subscription_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
delete_blockchain_event_subscription(Ctx, Blockchain, Network, ReferenceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/", ReferenceId, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Blockchain Events Subscriptions
%% Through this endpoint the customer can obtain a list of their callback subscriptions for the available Blockchain events.    Currently Crypto APIs 2.0 offers certain Blockchain event endpoints which allow the user to subscribe for one/a few/all and receive callback notifications when the specific event occurs.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}
-spec list_blockchain_events_subscriptions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_list_blockchain_events_subscriptions_r:cryptoapis_list_blockchain_events_subscriptions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_blockchain_events_subscriptions(Ctx, Blockchain, Network) ->
    list_blockchain_events_subscriptions(Ctx, Blockchain, Network, #{}).

-spec list_blockchain_events_subscriptions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_list_blockchain_events_subscriptions_r:cryptoapis_list_blockchain_events_subscriptions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
list_blockchain_events_subscriptions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'limit', 'offset'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


