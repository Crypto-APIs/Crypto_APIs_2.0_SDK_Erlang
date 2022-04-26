-module(cryptoapis_encode_x_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_encode_x_address_r_data/0]).

-type cryptoapis_encode_x_address_r_data() ::
    #{ 'item' := cryptoapis_encode_x_address_ri:cryptoapis_encode_x_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
