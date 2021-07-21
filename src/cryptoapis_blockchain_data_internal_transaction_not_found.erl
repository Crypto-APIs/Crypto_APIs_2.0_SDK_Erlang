-module(cryptoapis_blockchain_data_internal_transaction_not_found).

-export([encode/1]).

-export_type([cryptoapis_blockchain_data_internal_transaction_not_found/0]).

-type cryptoapis_blockchain_data_internal_transaction_not_found() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_blockchain_data_internal_transaction_not_found_error:cryptoapis_blockchain_data_internal_transaction_not_found_error()
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
