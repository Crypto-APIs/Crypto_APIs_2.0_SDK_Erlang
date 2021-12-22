-module(cryptoapis_inline_response_403_24).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_24/0]).

-type cryptoapis_inline_response_403_24() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_transactions_by_block_height_e403:cryptoapis_list_transactions_by_block_height_e403()
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
