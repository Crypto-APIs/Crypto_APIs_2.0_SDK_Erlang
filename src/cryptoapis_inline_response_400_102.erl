-module(cryptoapis_inline_response_400_102).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_102/0]).

-type cryptoapis_inline_response_400_102() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_decode_raw_transaction_hex_e400:cryptoapis_decode_raw_transaction_hex_e400()
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
