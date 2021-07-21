-module(cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_rb_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_rb_data/0]).

-type cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_rb_data() ::
    #{ 'item' := cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_rb_data_item:cryptoapis_new_confirmed_coins_transactions_and_each_confirmation_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
