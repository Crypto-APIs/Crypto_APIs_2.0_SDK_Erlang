-module(cryptoapis_invalid_network).

-export([encode/1]).

-export_type([cryptoapis_invalid_network/0]).

-type cryptoapis_invalid_network() ::
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
