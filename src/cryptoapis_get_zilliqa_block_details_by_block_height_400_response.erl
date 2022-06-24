-module(cryptoapis_get_zilliqa_block_details_by_block_height_400_response).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_block_details_by_block_height_400_response/0]).

-type cryptoapis_get_zilliqa_block_details_by_block_height_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_zilliqa_block_details_by_block_height_e400:cryptoapis_get_zilliqa_block_details_by_block_height_e400()
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
