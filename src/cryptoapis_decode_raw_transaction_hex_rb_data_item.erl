-module(cryptoapis_decode_raw_transaction_hex_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_rb_data_item/0]).

-type cryptoapis_decode_raw_transaction_hex_rb_data_item() ::
    #{ 'rawTransactionHex' := binary()
     }.

encode(#{ 'rawTransactionHex' := RawTransactionHex
        }) ->
    #{ 'rawTransactionHex' => RawTransactionHex
     }.
