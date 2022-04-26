-module(cryptoapis_decode_raw_transaction_hex_risd2_script_pub_key).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risd2_script_pub_key/0]).

-type cryptoapis_decode_raw_transaction_hex_risd2_script_pub_key() ::
    #{ 'address' := binary(),
       'asm' => binary(),
       'hex' => binary(),
       'type' => binary()
     }.

encode(#{ 'address' := Address,
          'asm' := Asm,
          'hex' := Hex,
          'type' := Type
        }) ->
    #{ 'address' => Address,
       'asm' => Asm,
       'hex' => Hex,
       'type' => Type
     }.
