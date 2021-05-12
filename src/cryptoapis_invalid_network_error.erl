-module(cryptoapis_invalid_network_error).

-export([encode/1]).

-export_type([cryptoapis_invalid_network_error/0]).

-type cryptoapis_invalid_network_error() ::
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
