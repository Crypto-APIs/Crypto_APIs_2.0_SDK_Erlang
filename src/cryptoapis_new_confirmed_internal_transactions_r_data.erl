-module(cryptoapis_new_confirmed_internal_transactions_r_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_r_data/0]).

-type cryptoapis_new_confirmed_internal_transactions_r_data() ::
    #{ 'item' := cryptoapis_new_confirmed_internal_transactions_ri:cryptoapis_new_confirmed_internal_transactions_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
