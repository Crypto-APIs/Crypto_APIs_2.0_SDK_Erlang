-module(cryptoapis_new_block_response).

-export([encode/1]).

-export_type([cryptoapis_new_block_response/0]).

-type cryptoapis_new_block_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_new_block_response_data:cryptoapis_new_block_response_data()
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
