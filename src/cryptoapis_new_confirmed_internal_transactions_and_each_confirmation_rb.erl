-module(cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb/0]).

-type cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb_data:cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
