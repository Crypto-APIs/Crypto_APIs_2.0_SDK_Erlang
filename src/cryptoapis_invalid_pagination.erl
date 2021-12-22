-module(cryptoapis_invalid_pagination).

-export([encode/1]).

-export_type([cryptoapis_invalid_pagination/0]).

-type cryptoapis_invalid_pagination() ::
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
