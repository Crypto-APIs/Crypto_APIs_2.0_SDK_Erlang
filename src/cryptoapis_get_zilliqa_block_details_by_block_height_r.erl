-module(cryptoapis_get_zilliqa_block_details_by_block_height_r).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_block_details_by_block_height_r/0]).

-type cryptoapis_get_zilliqa_block_details_by_block_height_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_zilliqa_block_details_by_block_height_r_data:cryptoapis_get_zilliqa_block_details_by_block_height_r_data()
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
