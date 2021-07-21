-module(cryptoapis_wallet_as_a_service_wallet_balance_not_enough).

-export([encode/1]).

-export_type([cryptoapis_wallet_as_a_service_wallet_balance_not_enough/0]).

-type cryptoapis_wallet_as_a_service_wallet_balance_not_enough() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_wallet_as_a_service_wallet_balance_not_enough_error:cryptoapis_wallet_as_a_service_wallet_balance_not_enough_error()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
