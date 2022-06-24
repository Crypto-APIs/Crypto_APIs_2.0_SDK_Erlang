-module(cryptoapis_decode_raw_transaction_hex_risl_vin_inner_script_sig).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risl_vin_inner_script_sig/0]).

-type cryptoapis_decode_raw_transaction_hex_risl_vin_inner_script_sig() ::
    #{ 'asm' => binary(),
       'hex' => binary(),
       'type' => binary()
     }.

encode(#{ 'asm' := Asm,
          'hex' := Hex,
          'type' := Type
        }) ->
    #{ 'asm' => Asm,
       'hex' => Hex,
       'type' => Type
     }.
