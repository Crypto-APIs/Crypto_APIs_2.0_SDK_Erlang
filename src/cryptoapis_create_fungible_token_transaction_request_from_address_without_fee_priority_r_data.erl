-module(cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r_data).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r_data/0]).

-type cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r_data() ::
    #{ 'item' := cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ri:cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
