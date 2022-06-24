-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_r).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_r/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_new_confirmed_token_transactions_for_specific_amount_r_data:cryptoapis_new_confirmed_token_transactions_for_specific_amount_r_data()
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
