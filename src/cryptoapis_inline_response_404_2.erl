-module(cryptoapis_inline_response_404_2).

-export([encode/1]).

-export_type([cryptoapis_inline_response_404_2/0]).

-type cryptoapis_inline_response_404_2() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_blockchain_data_block_not_found:cryptoapis_blockchain_data_block_not_found()
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
