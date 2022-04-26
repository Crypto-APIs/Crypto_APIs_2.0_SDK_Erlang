-module(cryptoapis_decode_x_address_ri).

-export([encode/1]).

-export_type([cryptoapis_decode_x_address_ri/0]).

-type cryptoapis_decode_x_address_ri() ::
    #{ 'addressTag' := integer(),
       'classicAddress' := binary()
     }.

encode(#{ 'addressTag' := AddressTag,
          'classicAddress' := ClassicAddress
        }) ->
    #{ 'addressTag' => AddressTag,
       'classicAddress' => ClassicAddress
     }.
