-module(cryptoapis_block_height_reached_r).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_r/0]).

-type cryptoapis_block_height_reached_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_block_height_reached_r_data:cryptoapis_block_height_reached_r_data()
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
