-module(cryptoapis_xpub_not_synced).

-export([encode/1]).

-export_type([cryptoapis_xpub_not_synced/0]).

-type cryptoapis_xpub_not_synced() ::
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
