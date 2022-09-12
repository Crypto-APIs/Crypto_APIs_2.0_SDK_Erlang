-module(cryptoapis_block_height_reached_data).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_data/0]).

-type cryptoapis_block_height_reached_data() ::
    #{ 'product' := binary(),
       'event' := binary(),
       'item' := cryptoapis_block_height_reached_data_item:cryptoapis_block_height_reached_data_item()
     }.

encode(#{ 'product' := Product,
          'event' := Event,
          'item' := Item
        }) ->
    #{ 'product' => Product,
       'event' => Event,
       'item' => Item
     }.
