-module(cryptoapis_unimplemented).

-export([encode/1]).

-export_type([cryptoapis_unimplemented/0]).

-type cryptoapis_unimplemented() ::
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
