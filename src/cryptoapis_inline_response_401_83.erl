-module(cryptoapis_inline_response_401_83).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_83/0]).

-type cryptoapis_inline_response_401_83() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_validate_address_e401:cryptoapis_validate_address_e401()
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
