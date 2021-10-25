-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_senders).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_senders/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_senders() ::
    #{ 'address' := binary()
     }.

encode(#{ 'address' := Address
        }) ->
    #{ 'address' => Address
     }.
