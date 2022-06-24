-module(cryptoapis_mined_transaction_400_response).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_400_response/0]).

-type cryptoapis_mined_transaction_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_mined_transaction_e400:cryptoapis_mined_transaction_e400()
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
