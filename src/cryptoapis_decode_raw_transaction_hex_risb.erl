-module(cryptoapis_decode_raw_transaction_hex_risb).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risb/0]).

-type cryptoapis_decode_raw_transaction_hex_risb() ::
    #{ 'locktime' := integer(),
       'transactionHash' := binary(),
       'vSize' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list(),
       'weight' => integer()
     }.

encode(#{ 'locktime' := Locktime,
          'transactionHash' := TransactionHash,
          'vSize' := VSize,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout,
          'weight' := Weight
        }) ->
    #{ 'locktime' => Locktime,
       'transactionHash' => TransactionHash,
       'vSize' => VSize,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout,
       'weight' => Weight
     }.
