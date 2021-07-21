-module(cryptoapis_list_transactions_by_block_height_ribsl).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_ribsl/0]).

-type cryptoapis_list_transactions_by_block_height_ribsl() ::
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
