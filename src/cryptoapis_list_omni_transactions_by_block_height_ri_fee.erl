-module(cryptoapis_list_omni_transactions_by_block_height_ri_fee).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_height_ri_fee/0]).

-type cryptoapis_list_omni_transactions_by_block_height_ri_fee() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
