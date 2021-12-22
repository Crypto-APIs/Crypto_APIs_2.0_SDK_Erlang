-module(cryptoapis_invalid_data).

-export([encode/1]).

-export_type([cryptoapis_invalid_data/0]).

-type cryptoapis_invalid_data() ::
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
