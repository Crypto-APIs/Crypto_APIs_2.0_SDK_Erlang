-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsbc).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsbc/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsbc() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout
     }.
