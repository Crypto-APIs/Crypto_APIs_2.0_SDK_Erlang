-module(cryptoapis_convert_bitcoin_cash_address_403_response).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_403_response/0]).

-type cryptoapis_convert_bitcoin_cash_address_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_convert_bitcoin_cash_address_e403:cryptoapis_convert_bitcoin_cash_address_e403()
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
