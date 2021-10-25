-module(cryptoapis_generate_address_ri_addresses).

-export([encode/1]).

-export_type([cryptoapis_generate_address_ri_addresses/0]).

-type cryptoapis_generate_address_ri_addresses() ::
    #{ 'address' := binary(),
       'format' := binary()
     }.

encode(#{ 'address' := Address,
          'format' := Format
        }) ->
    #{ 'address' => Address,
       'format' => Format
     }.
