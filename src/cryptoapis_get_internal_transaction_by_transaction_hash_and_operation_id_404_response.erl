-module(cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_404_response).

-export([encode/1]).

-export_type([cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_404_response/0]).

-type cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_404_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_blockchain_data_internal_transaction_not_found:cryptoapis_blockchain_data_internal_transaction_not_found()
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
