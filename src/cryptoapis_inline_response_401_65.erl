-module(cryptoapis_inline_response_401_65).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_65/0]).

-type cryptoapis_inline_response_401_65() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_block_e401:cryptoapis_new_block_e401()
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
