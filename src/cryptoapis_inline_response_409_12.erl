-module(cryptoapis_inline_response_409_12).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409_12/0]).

-type cryptoapis_inline_response_409_12() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_mined_transaction_e409:cryptoapis_mined_transaction_e409()
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
