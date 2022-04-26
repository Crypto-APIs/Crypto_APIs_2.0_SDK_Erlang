-module(cryptoapis_decode_raw_transaction_hex_risz).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risz/0]).

-type cryptoapis_decode_raw_transaction_hex_risz() ::
    #{ 'expiryHeight' := integer(),
       'locktime' := integer(),
       'overwintered' := boolean(),
       'saplinged' := boolean(),
       'transactionHash' := binary(),
       'valueBalance' := binary(),
       'version' := integer(),
       'versionGroupId' := binary(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'expiryHeight' := ExpiryHeight,
          'locktime' := Locktime,
          'overwintered' := Overwintered,
          'saplinged' := Saplinged,
          'transactionHash' := TransactionHash,
          'valueBalance' := ValueBalance,
          'version' := Version,
          'versionGroupId' := VersionGroupId,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'expiryHeight' => ExpiryHeight,
       'locktime' => Locktime,
       'overwintered' => Overwintered,
       'saplinged' => Saplinged,
       'transactionHash' => TransactionHash,
       'valueBalance' => ValueBalance,
       'version' => Version,
       'versionGroupId' => VersionGroupId,
       'vin' => Vin,
       'vout' => Vout
     }.
