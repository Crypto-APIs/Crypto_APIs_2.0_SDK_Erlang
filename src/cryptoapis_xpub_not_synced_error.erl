-module(cryptoapis_xpub_not_synced_error).

-export([encode/1]).

-export_type([cryptoapis_xpub_not_synced_error/0]).

-type cryptoapis_xpub_not_synced_error() ::
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
