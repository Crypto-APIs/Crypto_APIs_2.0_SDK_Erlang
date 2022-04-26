-module(cryptoapis_decode_raw_transaction_hex_rb).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_rb/0]).

-type cryptoapis_decode_raw_transaction_hex_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_decode_raw_transaction_hex_rb_data:cryptoapis_decode_raw_transaction_hex_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
