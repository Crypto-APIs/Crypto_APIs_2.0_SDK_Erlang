-module(cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsd).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsd/0]).

-type cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsd() ::
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
