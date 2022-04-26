-module(cryptoapis_decode_raw_transaction_hex_r).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_r/0]).

-type cryptoapis_decode_raw_transaction_hex_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_decode_raw_transaction_hex_r_data:cryptoapis_decode_raw_transaction_hex_r_data()
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
