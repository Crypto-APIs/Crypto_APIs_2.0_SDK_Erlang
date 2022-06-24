-module(cryptoapis_new_confirmed_tokens_transactions_409_response).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_tokens_transactions_409_response/0]).

-type cryptoapis_new_confirmed_tokens_transactions_409_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_confirmed_tokens_transactions_e409:cryptoapis_new_confirmed_tokens_transactions_e409()
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
