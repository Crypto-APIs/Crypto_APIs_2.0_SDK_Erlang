-module(cryptoapis_inline_response_400_85).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_85/0]).

-type cryptoapis_inline_response_400_85() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_broadcast_locally_signed_transaction_e400:cryptoapis_broadcast_locally_signed_transaction_e400()
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
