-module(cryptoapis_get_address_details_415_response).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_415_response/0]).

-type cryptoapis_get_address_details_415_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_unsupported_media_type:cryptoapis_unsupported_media_type()
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
