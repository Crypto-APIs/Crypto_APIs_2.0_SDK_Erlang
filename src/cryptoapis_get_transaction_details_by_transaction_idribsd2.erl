-module(cryptoapis_get_transaction_details_by_transaction_idribsd2).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsd2/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsd2() ::
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
