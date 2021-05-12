-module(cryptoapis_xpub_not_synced).

-export([encode/1]).

-export_type([cryptoapis_xpub_not_synced/0]).

-type cryptoapis_xpub_not_synced() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_xpub_not_synced_error:cryptoapis_xpub_not_synced_error()
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
