-module(cryptoapis_block_height_reached_e403).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_e403/0]).

-type cryptoapis_block_height_reached_e403() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
