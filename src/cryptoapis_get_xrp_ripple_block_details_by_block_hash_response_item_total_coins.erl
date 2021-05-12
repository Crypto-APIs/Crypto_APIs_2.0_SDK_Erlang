-module(cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item_total_coins).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item_total_coins/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_hash_response_item_total_coins() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
