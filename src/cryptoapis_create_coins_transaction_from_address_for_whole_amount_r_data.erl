-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_r_data).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_r_data/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_r_data() ::
    #{ 'item' := cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri:cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
