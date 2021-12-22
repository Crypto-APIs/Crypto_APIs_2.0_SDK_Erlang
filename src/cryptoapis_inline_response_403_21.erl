-module(cryptoapis_inline_response_403_21).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_21/0]).

-type cryptoapis_inline_response_403_21() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_zilliqa_transactions_by_block_hash_e403:cryptoapis_list_zilliqa_transactions_by_block_hash_e403()
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