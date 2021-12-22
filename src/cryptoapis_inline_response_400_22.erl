-module(cryptoapis_inline_response_400_22).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_22/0]).

-type cryptoapis_inline_response_400_22() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_zilliqa_transactions_by_block_height_e400:cryptoapis_list_zilliqa_transactions_by_block_height_e400()
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
