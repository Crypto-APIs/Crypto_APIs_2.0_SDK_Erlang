-module(cryptoapis_get_block_details_by_block_height_e400).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_height_e400/0]).

-type cryptoapis_get_block_details_by_block_height_e400() ::
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
