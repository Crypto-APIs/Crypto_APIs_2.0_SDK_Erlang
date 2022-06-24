-module(cryptoapis_decode_raw_transaction_hex_risz_vin_inner).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risz_vin_inner/0]).

-type cryptoapis_decode_raw_transaction_hex_risz_vin_inner() ::
    #{ 'address' => binary(),
       'inputHash' => binary(),
       'outputIndex' => binary(),
       'scriptSig' := cryptoapis_decode_raw_transaction_hex_risz_vin_inner_script_sig:cryptoapis_decode_raw_transaction_hex_risz_vin_inner_script_sig(),
       'sequence' => binary()
     }.

encode(#{ 'address' := Address,
          'inputHash' := InputHash,
          'outputIndex' := OutputIndex,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence
        }) ->
    #{ 'address' => Address,
       'inputHash' => InputHash,
       'outputIndex' => OutputIndex,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence
     }.
