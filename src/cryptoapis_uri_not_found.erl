-module(cryptoapis_uri_not_found).

-export([encode/1]).

-export_type([cryptoapis_uri_not_found/0]).

-type cryptoapis_uri_not_found() ::
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
