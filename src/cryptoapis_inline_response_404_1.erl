-module(cryptoapis_inline_response_404_1).

-export([encode/1]).

-export_type([cryptoapis_inline_response_404_1/0]).

-type cryptoapis_inline_response_404_1() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_resource_not_found:cryptoapis_resource_not_found()
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
