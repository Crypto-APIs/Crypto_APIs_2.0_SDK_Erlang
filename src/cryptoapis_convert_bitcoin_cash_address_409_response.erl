-module(cryptoapis_convert_bitcoin_cash_address_409_response).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_409_response/0]).

-type cryptoapis_convert_bitcoin_cash_address_409_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_data:cryptoapis_invalid_data()
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
