-module(cryptoapis_list_transactions_by_block_height_ribsd2).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_ribsd2/0]).

-type cryptoapis_list_transactions_by_block_height_ribsd2() ::
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
