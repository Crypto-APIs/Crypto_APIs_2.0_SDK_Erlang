-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data() ::
    #{ 'item' := cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data_item:cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
