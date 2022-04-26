-module(cryptoapis_inline_response_400_97).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_97/0]).

-type cryptoapis_inline_response_400_97() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_validate_address_e400:cryptoapis_validate_address_e400()
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