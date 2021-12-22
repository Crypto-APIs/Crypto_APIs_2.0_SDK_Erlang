-module(cryptoapis_inline_response_403_37).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_37/0]).

-type cryptoapis_inline_response_403_37() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_last_mined_block_e403:cryptoapis_get_last_mined_block_e403()
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
