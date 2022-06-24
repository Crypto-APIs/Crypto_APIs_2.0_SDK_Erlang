-module(cryptoapis_new_confirmed_internal_transactions_for_specific_amount_rb_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_for_specific_amount_rb_data/0]).

-type cryptoapis_new_confirmed_internal_transactions_for_specific_amount_rb_data() ::
    #{ 'item' := cryptoapis_new_confirmed_internal_transactions_for_specific_amount_rb_data_item:cryptoapis_new_confirmed_internal_transactions_for_specific_amount_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
