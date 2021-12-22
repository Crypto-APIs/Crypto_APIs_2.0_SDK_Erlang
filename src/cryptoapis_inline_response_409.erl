-module(cryptoapis_inline_response_409).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409/0]).

-type cryptoapis_inline_response_409() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_data:cryptoapis_invalid_data()
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
