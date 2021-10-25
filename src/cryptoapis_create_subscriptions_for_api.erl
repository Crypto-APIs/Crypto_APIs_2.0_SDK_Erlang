-module(cryptoapis_create_subscriptions_for_api).

-export([mined_transaction/4, mined_transaction/5,
         new_block/4, new_block/5,
         new_confirmed_coins_transactions/4, new_confirmed_coins_transactions/5,
         new_confirmed_coins_transactions_and_each_confirmation/4, new_confirmed_coins_transactions_and_each_confirmation/5,
         new_confirmed_internal_transactions/4, new_confirmed_internal_transactions/5,
         new_confirmed_internal_transactions_and_each_confirmation/4, new_confirmed_internal_transactions_and_each_confirmation/5,
         new_confirmed_tokens_transactions/4, new_confirmed_tokens_transactions/5,
         new_confirmed_tokens_transactions_and_each_confirmation/4, new_confirmed_tokens_transactions_and_each_confirmation/5,
         new_unconfirmed_coins_transactions/4, new_unconfirmed_coins_transactions/5,
         new_unconfirmed_tokens_transactions/4, new_unconfirmed_tokens_transactions/5]).

-define(BASE_URL, <<"/v2">>).

%% @doc Mined transaction
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when a specific transaction is mined. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified `transactionId`.    A transaction is mined when it is included in a new block in the blockchain.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec mined_transaction(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_mined_transaction_r:cryptoapis_mined_transaction_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
mined_transaction(Ctx, Blockchain, Network) ->
    mined_transaction(Ctx, Blockchain, Network, #{}).

-spec mined_transaction(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_mined_transaction_r:cryptoapis_mined_transaction_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
mined_transaction(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/transaction-mined">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisMinedTransactionRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New Block
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when a new block is mined in the specific blockchain. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    A new block is mined when it is added to the chain once a consensus is reached by the majority of the miners, which is when the block gets validated and added to the blockchain.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_block(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_block_r:cryptoapis_new_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_block(Ctx, Blockchain, Network) ->
    new_block(Ctx, Blockchain, Network, #{}).

-spec new_block(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_block_r:cryptoapis_new_block_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_block(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/block-mined">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewBlockRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed coins transactions
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_coins_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_coins_transactions_r:cryptoapis_new_confirmed_coins_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_coins_transactions(Ctx, Blockchain, Network) ->
    new_confirmed_coins_transactions(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_coins_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_coins_transactions_r:cryptoapis_new_confirmed_coins_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_coins_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-coins-transactions-confirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedCoinsTransactionsRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed coins transactions and each confirmation
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for coins from/to the customer's address with also a response at each confirmation the transaction has received until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **coins transactions only, not tokens**.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_coins_transactions_and_each_confirmation(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_coins_transactions_and_each_confirmation(Ctx, Blockchain, Network) ->
    new_confirmed_coins_transactions_and_each_confirmation(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_coins_transactions_and_each_confirmation(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_coins_transactions_and_each_confirmation(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-coins-transactions-confirmed-each-confirmation">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedCoinsTransactionsAndEachConfirmationRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed internal transactions
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new confirmed internal transactions. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs.    Being confirmed means that the transactions are verified by miners and added to the next block.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_internal_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_internal_transactions_r:cryptoapis_new_confirmed_internal_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_internal_transactions(Ctx, Blockchain, Network) ->
    new_confirmed_internal_transactions(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_internal_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_internal_transactions_r:cryptoapis_new_confirmed_internal_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_internal_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-internal-transactions-confirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedInternalTransactionsRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed internal transactions and each confirmation
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new confirmed internal transactions. Includes also a response at each confirmation the transaction receives until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs.     Being confirmed means that the transactions are verified by miners and added to the next block.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_internal_transactions_and_each_confirmation(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_internal_transactions_and_each_confirmation(Ctx, Blockchain, Network) ->
    new_confirmed_internal_transactions_and_each_confirmation(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_internal_transactions_and_each_confirmation(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_internal_transactions_and_each_confirmation(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-internal-transactions-confirmed-each-confirmation">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedInternalTransactionsAndEachConfirmationRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed tokens transactions
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for tokens from/to the customer's address. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **tokens transactions only, not coins**.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_tokens_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_tokens_transactions_r:cryptoapis_new_confirmed_tokens_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_tokens_transactions(Ctx, Blockchain, Network) ->
    new_confirmed_tokens_transactions(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_tokens_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_tokens_transactions_r:cryptoapis_new_confirmed_tokens_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_tokens_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-tokens-transactions-confirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedTokensTransactionsRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New confirmed tokens transactions and each confirmation
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new incoming or outgoing confirmed transactions for tokens from/to the customer's address with also a response at each confirmation the transaction has received until the specified confirmations limit is reached. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.     Being confirmed means that the transactions are verified by miners and added to the next block. This endpoint refers to **tokens transactions only, not coins**.    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_confirmed_tokens_transactions_and_each_confirmation(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_tokens_transactions_and_each_confirmation(Ctx, Blockchain, Network) ->
    new_confirmed_tokens_transactions_and_each_confirmation(Ctx, Blockchain, Network, #{}).

-spec new_confirmed_tokens_transactions_and_each_confirmation(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_r:cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_confirmed_tokens_transactions_and_each_confirmation(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-tokens-transactions-confirmed-each-confirmation">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewConfirmedTokensTransactionsAndEachConfirmationRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New unconfirmed coins transactions
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed coins transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed coins transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {note}For UTXO-based protocols like Bitcoin a transaction could have multiple inputs and outputs which means the address could in as both sender and recipient. [Here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-data-returned-for-utxo-based-transactions) is how we inform you on that.{/note}    {warning}We cannot guarantee at 100% that webhooks for unconfirmed transactions will always be received. Some may **not get received** due to the possibility of some nodes not being updated with that information. This can occur in networks with low activity and/or not many nodes, e.g. Testnet networks and rarely Mainnets.{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_unconfirmed_coins_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_unconfirmed_coins_transactions_r:cryptoapis_new_unconfirmed_coins_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_unconfirmed_coins_transactions(Ctx, Blockchain, Network) ->
    new_unconfirmed_coins_transactions(Ctx, Blockchain, Network, #{}).

-spec new_unconfirmed_coins_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_unconfirmed_coins_transactions_r:cryptoapis_new_unconfirmed_coins_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_unconfirmed_coins_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-coins-transactions-unconfirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewUnconfirmedCoinsTransactionsRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc New unconfirmed tokens transactions
%% Through this endpoint customers can create callback subscriptions for a specific event. In this case the event is when there are new unconfirmed tokens transactions for the user. By creating this subscription the user will be notified by Crypto APIs 2.0 when that event occurs. The information is returned per specified address.    Unconfirmed tokens transactions remain in the mempool (memory pool) until they are confirmed by miners and added to the next block. Sometimes spikes in transaction activity can cause delays in confirmations.    {warning}We cannot guarantee at 100% that webhooks for unconfirmed transactions will always be received. Some may **not get received** due to the possibility of some nodes not being updated with that information. This can occur in networks with low activity and/or not many nodes, e.g. Testnet networks and rarely Mainnets.{/warning}    {note}To have an operational callback subscription, you need to first verify a domain for the Callback URL. Please see more information on Callbacks [here](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-url).{/note}    {note}It is also **important to note** that just because pending unconfirmed transactions are in the mempool, **doesn't necessarily** mean they will get confirmed.{/note}    {warning}Crypto APIs will notify the user **only when** the event occurs. There are cases when the specific event doesn't happen at all, or takes a long time to do so. A callback notification **will not** be sent if the event does not or cannot occur, or will take long time to occur.{/warning}
-spec new_unconfirmed_tokens_transactions(ctx:ctx(), binary(), binary()) -> {ok, cryptoapis_new_unconfirmed_tokens_transactions_r:cryptoapis_new_unconfirmed_tokens_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_unconfirmed_tokens_transactions(Ctx, Blockchain, Network) ->
    new_unconfirmed_tokens_transactions(Ctx, Blockchain, Network, #{}).

-spec new_unconfirmed_tokens_transactions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, cryptoapis_new_unconfirmed_tokens_transactions_r:cryptoapis_new_unconfirmed_tokens_transactions_r(), cryptoapis_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), cryptoapis_utils:response_info()}.
new_unconfirmed_tokens_transactions(Ctx, Blockchain, Network, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = [<<"/blockchain-events/", Blockchain, "/", Network, "/subscriptions/address-tokens-transactions-unconfirmed">>],
    QS = lists:flatten([])++cryptoapis_utils:optional_params(['context'], _OptionalParams),
    Headers = [],
    Body1 = CryptoapisNewUnconfirmedTokensTransactionsRb,
    ContentTypeHeader = cryptoapis_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    cryptoapis_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


