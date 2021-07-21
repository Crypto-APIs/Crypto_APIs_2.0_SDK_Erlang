-module(cryptoapis_create_coins_transaction_request_from_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_address_r_data/0]).

-type cryptoapis_create_coins_transaction_request_from_address_r_data() ::
    #{ 'item' := cryptoapis_create_coins_transaction_request_from_address_ri:cryptoapis_create_coins_transaction_request_from_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
