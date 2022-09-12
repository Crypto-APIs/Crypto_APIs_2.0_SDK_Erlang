-module(cryptoapis_block_height_reached_rb).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_rb/0]).

-type cryptoapis_block_height_reached_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_block_height_reached_rb_data:cryptoapis_block_height_reached_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
