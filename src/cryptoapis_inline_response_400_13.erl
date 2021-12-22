-module(cryptoapis_inline_response_400_13).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_13/0]).

-type cryptoapis_inline_response_400_13() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_coins_transaction_request_from_wallet_e400:cryptoapis_create_coins_transaction_request_from_wallet_e400()
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
