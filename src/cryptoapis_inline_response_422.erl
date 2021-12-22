-module(cryptoapis_inline_response_422).

-export([encode/1]).

-export_type([cryptoapis_inline_response_422/0]).

-type cryptoapis_inline_response_422() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_request_body_structure:cryptoapis_invalid_request_body_structure()
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
