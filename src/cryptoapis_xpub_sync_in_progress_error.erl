-module(cryptoapis_xpub_sync_in_progress_error).

-export([encode/1]).

-export_type([cryptoapis_xpub_sync_in_progress_error/0]).

-type cryptoapis_xpub_sync_in_progress_error() ::
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
