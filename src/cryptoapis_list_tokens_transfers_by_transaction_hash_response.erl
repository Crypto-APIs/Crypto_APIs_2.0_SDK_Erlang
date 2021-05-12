-module(cryptoapis_list_tokens_transfers_by_transaction_hash_response).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_transfers_by_transaction_hash_response/0]).

-type cryptoapis_list_tokens_transfers_by_transaction_hash_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_tokens_transfers_by_transaction_hash_response_data:cryptoapis_list_tokens_transfers_by_transaction_hash_response_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
