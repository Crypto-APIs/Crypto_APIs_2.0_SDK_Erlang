-module(cryptoapis_xpub_sync_in_progress).

-export([encode/1]).

-export_type([cryptoapis_xpub_sync_in_progress/0]).

-type cryptoapis_xpub_sync_in_progress() ::
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
