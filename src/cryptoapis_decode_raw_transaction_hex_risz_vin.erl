-module(cryptoapis_decode_raw_transaction_hex_risz_vin).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risz_vin/0]).

-type cryptoapis_decode_raw_transaction_hex_risz_vin() ::
    #{ 'address' => binary(),
       'inputHash' => binary(),
       'outputIndex' => binary(),
       'scriptSig' := cryptoapis_decode_raw_transaction_hex_risz_script_sig:cryptoapis_decode_raw_transaction_hex_risz_script_sig(),
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
