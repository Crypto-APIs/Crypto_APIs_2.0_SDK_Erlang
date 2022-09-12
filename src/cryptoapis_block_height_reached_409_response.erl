-module(cryptoapis_block_height_reached_409_response).

-export([encode/1]).

-export_type([cryptoapis_block_height_reached_409_response/0]).

-type cryptoapis_block_height_reached_409_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_block_height_reached_e409:cryptoapis_block_height_reached_e409()
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
