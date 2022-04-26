-module(cryptoapis_decode_raw_transaction_hex_rb_data).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_rb_data/0]).

-type cryptoapis_decode_raw_transaction_hex_rb_data() ::
    #{ 'item' := cryptoapis_decode_raw_transaction_hex_rb_data_item:cryptoapis_decode_raw_transaction_hex_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
