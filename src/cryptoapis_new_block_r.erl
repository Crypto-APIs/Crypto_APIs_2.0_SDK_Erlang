-module(cryptoapis_new_block_r).

-export([encode/1]).

-export_type([cryptoapis_new_block_r/0]).

-type cryptoapis_new_block_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_new_block_r_data:cryptoapis_new_block_r_data()
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
