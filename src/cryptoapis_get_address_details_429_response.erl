-module(cryptoapis_get_address_details_429_response).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_429_response/0]).

-type cryptoapis_get_address_details_429_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_request_limit_reached:cryptoapis_request_limit_reached()
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
