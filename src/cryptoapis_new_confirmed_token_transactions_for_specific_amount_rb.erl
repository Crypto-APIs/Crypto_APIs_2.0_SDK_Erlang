-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb_data:cryptoapis_new_confirmed_token_transactions_for_specific_amount_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
