-module(cryptoapis_generate_address_rb_data).

-export([encode/1]).

-export_type([cryptoapis_generate_address_rb_data/0]).

-type cryptoapis_generate_address_rb_data() ::
    #{ 'item' := maps:map()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
