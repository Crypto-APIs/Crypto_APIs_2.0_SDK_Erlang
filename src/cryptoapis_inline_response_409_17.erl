-module(cryptoapis_inline_response_409_17).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409_17/0]).

-type cryptoapis_inline_response_409_17() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_broadcast_locally_signed_transaction_e409:cryptoapis_broadcast_locally_signed_transaction_e409()
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
