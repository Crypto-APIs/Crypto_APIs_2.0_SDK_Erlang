-module(cryptoapis_invalid_request_body_structure).

-export([encode/1]).

-export_type([cryptoapis_invalid_request_body_structure/0]).

-type cryptoapis_invalid_request_body_structure() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_request_body_structure_error:cryptoapis_invalid_request_body_structure_error()
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
