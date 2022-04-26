-module(cryptoapis_features_api).

-export([broadcast_locally_signed_transaction/4, broadcast_locally_signed_transaction/5,
         decode_raw_transaction_hex/4, decode_raw_transaction_hex/5,
         decode_x_address/4, decode_x_address/5,
         derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses/4, derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses/5,
         encode_x_address/5, encode_x_address/6,
         estimate_gas_limit/4, estimate_gas_limit/5,
         estimate_token_gas_limit/4, estimate_token_gas_limit/5,
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

%% @doc Decode Raw Transaction Hex
%% Through this endpoint customers can decode a raw transaction hex and see the decoded transactions' details.
-spec decode_raw_transaction_hex(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_decode_raw_transaction_hex_r:cryptoapis_decode_raw_transaction_hex_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
decode_raw_transaction_hex(Ctx, Blockchain, Network) ->
    decode_raw_transaction_hex(Ctx, Blockchain, Network, #{}).

-spec decode_raw_transaction_hex(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_decode_raw_transaction_hex_r:cryptoapis_decode_raw_transaction_hex_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
decode_raw_transaction_hex(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/decode-raw-transaction">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisDecodeRawTransactionHexRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Decode X-Address
%% Through this endpoint, customers can decode an encoded XRP address with tag, by providing the specific x-address. The response includes the decoded classic address and the tag.
-spec decode_x_address(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_decode_x_address_r:cryptoapis_decode_x_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
decode_x_address(Ctx, Blockchain, Network, XAddress) ->
    decode_x_address(Ctx, Blockchain, Network, XAddress, #{}).

-spec decode_x_address(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_decode_x_address_r:cryptoapis_decode_x_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
decode_x_address(Ctx, Blockchain, Network, XAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/decode-x-address/", XAddress, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Derive HD Wallet (xPub, yPub, zPub) Change Or Receiving Addresses
%% Through this endpoint, customers can derive up to 10 addresses - both change and receive, from a certain HD Wallet (xPub, yPub, zPub), by providing an extended public key. By default the system creates a receiving/deposit address, unless the isChange attribute is set to 'true'. In that case the system derives a 'change' address. The change address can be derived only for UTXO based blockchains, for all the rest, this endpoint always creates a deposit/receiving address.
-spec derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses(ctx:ctx(), binary(), binary(), binary()) -> {ok, cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_r:cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses(Ctx, Blockchain, ExtendedPublicKey, Network) ->
    derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses(Ctx, Blockchain, ExtendedPublicKey, Network, #{}).

-spec derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_r:cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
derive_hd_wallet_(x_pub,_y_pub,_z_pub)_change_or_receiving_addresses(Ctx, Blockchain, ExtendedPublicKey, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/hd/", ExtendedPublicKey, "/addresses/derive-address">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context', 'addressFormat', 'addressesCount', 'isChange', 'startIndex'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Encode X-Address
%% Through this endpoint, customers can encode an encoded XRP address with tag, by providing the specific x-address. The response includes the encoded classic address and the tag.
-spec encode_x_address(ctx:ctx(), integer(), binary(), binary(), binary()) -> {ok, cryptoapis_encode_x_address_r:cryptoapis_encode_x_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
encode_x_address(Ctx, AddressTag, Blockchain, ClassicAddress, Network) ->
    encode_x_address(Ctx, AddressTag, Blockchain, ClassicAddress, Network, #{}).

-spec encode_x_address(ctx:ctx(), integer(), binary(), binary(), binary(), maps:map()) -> {ok, cryptoapis_encode_x_address_r:cryptoapis_encode_x_address_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
encode_x_address(Ctx, AddressTag, Blockchain, ClassicAddress, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/encode-x-address/", ClassicAddress, "/", AddressTag, "">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Estimate Gas Limit
%% This endpoint helps customer in estimating the gas limit needed for a transaction. It gives information for gas expenses when sending ether to contracts or making a transaction with additional data in it.
-spec estimate_gas_limit(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_estimate_gas_limit_r:cryptoapis_estimate_gas_limit_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_gas_limit(Ctx, Blockchain, Network) ->
    estimate_gas_limit(Ctx, Blockchain, Network, #{}).

-spec estimate_gas_limit(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_estimate_gas_limit_r:cryptoapis_estimate_gas_limit_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_gas_limit(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/gas-limit">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisEstimateGasLimitRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Estimate Token Gas Limit
%% This endpoint helps customer in estimating the Contract Gas Limit needed for a transaction. It gives information for gas expenses for a specific contract when sending ethers or making a transaction with additional data in it.
-spec estimate_token_gas_limit(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_estimate_token_gas_limit_r:cryptoapis_estimate_token_gas_limit_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_token_gas_limit(Ctx, Blockchain, Network) ->
    estimate_token_gas_limit(Ctx, Blockchain, Network, #{}).

-spec estimate_token_gas_limit(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_estimate_token_gas_limit_r:cryptoapis_estimate_token_gas_limit_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
estimate_token_gas_limit(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-tools/", Blockchain, "/", Network, "/gas-limit/contract">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisEstimateTokenGasLimitRb,
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


