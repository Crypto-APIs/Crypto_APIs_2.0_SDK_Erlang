-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender() ::
    #{ 'address' := binary()
     }.

encode(#{ 'address' := Address
        }) ->
    #{ 'address' => Address
     }.
