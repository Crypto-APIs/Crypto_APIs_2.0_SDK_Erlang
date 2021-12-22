-module(cryptoapis_already_exists).

-export([encode/1]).

-export_type([cryptoapis_already_exists/0]).

-type cryptoapis_already_exists() ::
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
