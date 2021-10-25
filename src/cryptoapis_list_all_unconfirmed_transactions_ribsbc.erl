-module(cryptoapis_list_all_unconfirmed_transactions_ribsbc).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribsbc/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribsbc() ::
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
