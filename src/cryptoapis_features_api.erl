-module(cryptoapis_features_api).

-export([broadcast_locally_signed_transaction/4, broadcast_locally_signed_transaction/5,
         generate_address/4, generate_address/5,
         get_eip_1559_fee_recommendations/3, get_eip_1559_fee_recommendations/4,
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

%% @doc Generate Address
%% This endpoint will generate a unique address for the user along with the specific transaction script, e.g. P2PKH, a private and a public key, and WIF.     Users **must** keep their private keys and WIFs secure and accessible to only them at all times. Losing those exposes a risk of losing their funds associated with the respective address.     {warning}We generate, but **do not** save or record the response in any data base, log or anywhere else on our side! In the case a user loses their private key or WIF, Crypto APIs 2.0 **will not be able** to retrieve it.{/warning}
-spec generate_address(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_generate_address_r:cryptoapis_generate_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
generate_address(Ctx, Blockchain, Network) ->
    generate_address(Ctx, Blockchain, Network, #{}).

-spec generate_address(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_generate_address_r:cryptoapis_generate_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
generate_address(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/addresses/generate">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisGenerateAddressRb,
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


