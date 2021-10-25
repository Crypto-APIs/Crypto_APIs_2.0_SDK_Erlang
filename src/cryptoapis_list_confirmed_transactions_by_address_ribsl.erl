-module(cryptoapis_list_confirmed_transactions_by_address_ribsl).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_ribsl/0]).

-type cryptoapis_list_confirmed_transactions_by_address_ribsl() ::
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
