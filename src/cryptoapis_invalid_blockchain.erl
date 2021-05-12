-module(cryptoapis_invalid_blockchain).

-export([encode/1]).

-export_type([cryptoapis_invalid_blockchain/0]).

-type cryptoapis_invalid_blockchain() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_invalid_blockchain_error:cryptoapis_invalid_blockchain_error()
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
