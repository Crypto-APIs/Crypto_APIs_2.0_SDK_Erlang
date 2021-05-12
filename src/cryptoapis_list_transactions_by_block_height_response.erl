-module(cryptoapis_list_transactions_by_block_height_response).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_response/0]).

-type cryptoapis_list_transactions_by_block_height_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_list_transactions_by_block_height_response_data:cryptoapis_list_transactions_by_block_height_response_data()
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
