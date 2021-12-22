-module(cryptoapis_limit_greater_than_allowed).

-export([encode/1]).

-export_type([cryptoapis_limit_greater_than_allowed/0]).

-type cryptoapis_limit_greater_than_allowed() ::
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
