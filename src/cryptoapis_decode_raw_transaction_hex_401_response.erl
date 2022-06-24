-module(cryptoapis_decode_raw_transaction_hex_401_response).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_401_response/0]).

-type cryptoapis_decode_raw_transaction_hex_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_decode_raw_transaction_hex_e401:cryptoapis_decode_raw_transaction_hex_e401()
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
