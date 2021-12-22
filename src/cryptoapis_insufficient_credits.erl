-module(cryptoapis_insufficient_credits).

-export([encode/1]).

-export_type([cryptoapis_insufficient_credits/0]).

-type cryptoapis_insufficient_credits() ::
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
