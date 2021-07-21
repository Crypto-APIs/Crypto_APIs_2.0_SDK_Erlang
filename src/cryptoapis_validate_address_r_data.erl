-module(cryptoapis_validate_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_validate_address_r_data/0]).

-type cryptoapis_validate_address_r_data() ::
    #{ 'item' := cryptoapis_validate_address_ri:cryptoapis_validate_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
