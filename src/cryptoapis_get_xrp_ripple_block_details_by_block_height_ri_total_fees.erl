-module(cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_fees).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_fees/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_height_ri_total_fees() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
