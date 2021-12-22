-module(cryptoapis_inline_response_401_71).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_71/0]).

-type cryptoapis_inline_response_401_71() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_block_details_by_block_hash_from_callback_e401:cryptoapis_get_block_details_by_block_hash_from_callback_e401()
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
