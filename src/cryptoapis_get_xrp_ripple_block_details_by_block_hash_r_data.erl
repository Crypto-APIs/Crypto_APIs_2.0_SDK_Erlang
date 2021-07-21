-module(cryptoapis_get_xrp_ripple_block_details_by_block_hash_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_xrp_ripple_block_details_by_block_hash_r_data/0]).

-type cryptoapis_get_xrp_ripple_block_details_by_block_hash_r_data() ::
    #{ 'item' := cryptoapis_get_xrp_ripple_block_details_by_block_hash_ri:cryptoapis_get_xrp_ripple_block_details_by_block_hash_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
