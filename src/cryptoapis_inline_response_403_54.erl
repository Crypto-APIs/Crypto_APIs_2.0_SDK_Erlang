-module(cryptoapis_inline_response_403_54).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_54/0]).

-type cryptoapis_inline_response_403_54() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_tokens_transfers_by_transaction_hash_e403:cryptoapis_list_tokens_transfers_by_transaction_hash_e403()
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
