-module(cryptoapis_invalid_data).

-export([encode/1]).

-export_type([cryptoapis_invalid_data/0]).

-type cryptoapis_invalid_data() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_data_error:cryptoapis_invalid_data_error()
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
