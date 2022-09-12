-module(cryptoapis_convert_bitcoin_cash_address_402_response).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_402_response/0]).

-type cryptoapis_convert_bitcoin_cash_address_402_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_insufficient_credits:cryptoapis_insufficient_credits()
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
