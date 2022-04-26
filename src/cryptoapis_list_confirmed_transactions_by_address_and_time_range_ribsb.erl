-module(cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsb).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsb/0]).

-type cryptoapis_list_confirmed_transactions_by_address_and_time_range_ribsb() ::
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
