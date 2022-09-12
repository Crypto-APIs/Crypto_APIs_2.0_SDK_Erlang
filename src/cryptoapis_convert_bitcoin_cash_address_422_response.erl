-module(cryptoapis_convert_bitcoin_cash_address_422_response).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_422_response/0]).

-type cryptoapis_convert_bitcoin_cash_address_422_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_request_body_structure:cryptoapis_invalid_request_body_structure()
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
