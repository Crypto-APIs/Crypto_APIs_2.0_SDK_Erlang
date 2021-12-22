-module(cryptoapis_inline_response_403_50).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_50/0]).

-type cryptoapis_inline_response_403_50() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_e403:cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_e403()
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
