-module(cryptoapis_convert_bitcoin_cash_address_500_response).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_500_response/0]).

-type cryptoapis_convert_bitcoin_cash_address_500_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unexpected_server_error:cryptoapis_unexpected_server_error()
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
