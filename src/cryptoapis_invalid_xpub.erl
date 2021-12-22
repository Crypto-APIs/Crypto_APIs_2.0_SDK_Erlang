-module(cryptoapis_invalid_xpub).

-export([encode/1]).

-export_type([cryptoapis_invalid_xpub/0]).

-type cryptoapis_invalid_xpub() ::
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
