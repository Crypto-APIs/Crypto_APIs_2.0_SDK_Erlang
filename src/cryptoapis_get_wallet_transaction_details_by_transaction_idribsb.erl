-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsb).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsb/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsb() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'vSize' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'vSize' := VSize,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'vSize' => VSize,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout
     }.
