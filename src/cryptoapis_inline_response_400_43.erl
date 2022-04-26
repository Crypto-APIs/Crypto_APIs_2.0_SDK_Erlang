-module(cryptoapis_inline_response_400_43).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_43/0]).

-type cryptoapis_inline_response_400_43() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_latest_mined_zilliqa_block_e400:cryptoapis_get_latest_mined_zilliqa_block_e400()
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
