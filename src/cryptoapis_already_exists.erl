-module(cryptoapis_already_exists).

-export([encode/1]).

-export_type([cryptoapis_already_exists/0]).

-type cryptoapis_already_exists() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_already_exists_error:cryptoapis_already_exists_error()
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
