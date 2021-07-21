-module(cryptoapis_get_transaction_details_by_transaction_idribsl).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribsl/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribsl() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list(),
       'vsize' := integer()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout,
          'vsize' := Vsize
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout,
       'vsize' => Vsize
     }.
