-module(cryptoapis_endpoint_not_allowed_for_api_key).

-export([encode/1]).

-export_type([cryptoapis_endpoint_not_allowed_for_api_key/0]).

-type cryptoapis_endpoint_not_allowed_for_api_key() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_endpoint_not_allowed_for_api_key_error:cryptoapis_endpoint_not_allowed_for_api_key_error()
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
