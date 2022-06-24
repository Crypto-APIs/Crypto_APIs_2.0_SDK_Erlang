-module(cryptoapis_decode_raw_transaction_hex_risd2_vin_inner).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risd2_vin_inner/0]).

-type cryptoapis_decode_raw_transaction_hex_risd2_vin_inner() ::
    #{ 'address' => binary(),
       'inputHash' => binary(),
       'outputIndex' => binary(),
       'scriptSig' := cryptoapis_decode_raw_transaction_hex_risd2_vin_inner_script_sig:cryptoapis_decode_raw_transaction_hex_risd2_vin_inner_script_sig(),
       'sequence' => binary(),
       'txinwitness' => list()
     }.

encode(#{ 'address' := Address,
          'inputHash' := InputHash,
          'outputIndex' := OutputIndex,
          'scriptSig' := ScriptSig,
          'sequence' := Sequence,
          'txinwitness' := Txinwitness
        }) ->
    #{ 'address' => Address,
       'inputHash' => InputHash,
       'outputIndex' => OutputIndex,
       'scriptSig' => ScriptSig,
       'sequence' => Sequence,
       'txinwitness' => Txinwitness
     }.
