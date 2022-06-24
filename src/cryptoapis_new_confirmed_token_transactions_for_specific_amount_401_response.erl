-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_401_response).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_401_response/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_new_confirmed_token_transactions_for_specific_amount_e401:cryptoapis_new_confirmed_token_transactions_for_specific_amount_e401()
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
