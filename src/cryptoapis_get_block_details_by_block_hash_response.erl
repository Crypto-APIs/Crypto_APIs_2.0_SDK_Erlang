-module(cryptoapis_get_block_details_by_block_hash_response).

-export([encode/1]).

-export_type([cryptoapis_get_block_details_by_block_hash_response/0]).

-type cryptoapis_get_block_details_by_block_hash_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_block_details_by_block_hash_response_data:cryptoapis_get_block_details_by_block_hash_response_data()
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
