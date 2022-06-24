-module(cryptoapis_get_last_mined_block_401_response).

-export([encode/1]).

-export_type([cryptoapis_get_last_mined_block_401_response/0]).

-type cryptoapis_get_last_mined_block_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_last_mined_block_e401:cryptoapis_get_last_mined_block_e401()
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
