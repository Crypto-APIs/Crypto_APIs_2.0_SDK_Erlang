-module(cryptoapis_generate_deposit_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_generate_deposit_address_r_data/0]).

-type cryptoapis_generate_deposit_address_r_data() ::
    #{ 'item' := cryptoapis_generate_deposit_address_ri:cryptoapis_generate_deposit_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
