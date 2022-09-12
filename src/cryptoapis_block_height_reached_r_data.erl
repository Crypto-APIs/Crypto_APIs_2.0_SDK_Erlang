-module(cryptoapis_block_height_reached_r_data).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_r_data/0]).

-type cryptoapis_block_height_reached_r_data() ::
    #{ 'item' := cryptoapis_block_height_reached_ri:cryptoapis_block_height_reached_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
