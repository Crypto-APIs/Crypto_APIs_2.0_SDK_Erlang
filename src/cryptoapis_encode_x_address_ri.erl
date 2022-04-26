-module(cryptoapis_encode_x_address_ri).

-export([encode/1]).

-export_type([cryptoapis_encode_x_address_ri/0]).

-type cryptoapis_encode_x_address_ri() ::
    #{ 'xAddress' := binary()
     }.

encode(#{ 'xAddress' := XAddress
        }) ->
    #{ 'xAddress' => XAddress
     }.
