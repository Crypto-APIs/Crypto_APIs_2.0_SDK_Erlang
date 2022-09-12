-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data() ::
    #{ 'item' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data_item:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
