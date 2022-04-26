-module(cryptoapis_inline_response_403_104).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_104/0]).

-type cryptoapis_inline_response_403_104() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_encode_x_address_e403:cryptoapis_encode_x_address_e403()
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