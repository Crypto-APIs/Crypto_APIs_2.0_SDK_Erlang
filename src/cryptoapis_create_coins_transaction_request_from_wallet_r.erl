-module(cryptoapis_create_coins_transaction_request_from_wallet_r).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_r/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_coins_transaction_request_from_wallet_r_data:cryptoapis_create_coins_transaction_request_from_wallet_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
