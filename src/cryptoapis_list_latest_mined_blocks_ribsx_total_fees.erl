-module(cryptoapis_list_latest_mined_blocks_ribsx_total_fees).

-export([encode/1]).

-export_type([cryptoapis_list_latest_mined_blocks_ribsx_total_fees/0]).

-type cryptoapis_list_latest_mined_blocks_ribsx_total_fees() ::
    #{ 'amount' := binary(),
       'unit' => binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
