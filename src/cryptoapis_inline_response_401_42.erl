-module(cryptoapis_inline_response_401_42).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_42/0]).

-type cryptoapis_inline_response_401_42() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_latest_mined_blocks_e401:cryptoapis_list_latest_mined_blocks_e401()
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