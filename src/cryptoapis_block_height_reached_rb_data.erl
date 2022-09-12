-module(cryptoapis_block_height_reached_rb_data).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_rb_data/0]).

-type cryptoapis_block_height_reached_rb_data() ::
    #{ 'item' := cryptoapis_block_height_reached_rb_data_item:cryptoapis_block_height_reached_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
