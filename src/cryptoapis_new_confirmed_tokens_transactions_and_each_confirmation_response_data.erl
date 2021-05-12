-module(cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_data).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_data/0]).

-type cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_data() ::
    #{ 'item' := cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_item:cryptoapis_new_confirmed_tokens_transactions_and_each_confirmation_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
