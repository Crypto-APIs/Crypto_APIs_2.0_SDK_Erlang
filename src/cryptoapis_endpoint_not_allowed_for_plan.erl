-module(cryptoapis_endpoint_not_allowed_for_plan).

-export([encode/1]).

-export_type([cryptoapis_endpoint_not_allowed_for_plan/0]).

-type cryptoapis_endpoint_not_allowed_for_plan() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_endpoint_not_allowed_for_plan_error:cryptoapis_endpoint_not_allowed_for_plan_error()
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
