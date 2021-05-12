-module(cryptoapis_xpub_sync_in_progress).

-export([encode/1]).

-export_type([cryptoapis_xpub_sync_in_progress/0]).

-type cryptoapis_xpub_sync_in_progress() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_xpub_sync_in_progress_error:cryptoapis_xpub_sync_in_progress_error()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
