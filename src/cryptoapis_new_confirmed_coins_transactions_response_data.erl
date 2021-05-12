-module(cryptoapis_new_confirmed_coins_transactions_response_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_coins_transactions_response_data/0]).

-type cryptoapis_new_confirmed_coins_transactions_response_data() ::
    #{ 'item' := cryptoapis_new_confirmed_coins_transactions_response_item:cryptoapis_new_confirmed_coins_transactions_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
