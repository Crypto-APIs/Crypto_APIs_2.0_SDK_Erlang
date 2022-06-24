-module(cryptoapis_new_confirmed_token_transactions_for_specific_amount_r_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_token_transactions_for_specific_amount_r_data/0]).

-type cryptoapis_new_confirmed_token_transactions_for_specific_amount_r_data() ::
    #{ 'item' := cryptoapis_new_confirmed_token_transactions_for_specific_amount_ri:cryptoapis_new_confirmed_token_transactions_for_specific_amount_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
