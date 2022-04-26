-module(cryptoapis_inline_response_501).

-export([encode/1]).

-export_type([cryptoapis_inline_response_501/0]).

-type cryptoapis_inline_response_501() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unimplemented:cryptoapis_unimplemented()
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
