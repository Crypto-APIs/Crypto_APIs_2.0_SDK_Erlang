-module(cryptoapis_generate_receiving_address_ri).

-export([encode/1]).

-export_type([cryptoapis_generate_receiving_address_ri/0]).

-type cryptoapis_generate_receiving_address_ri() ::
    #{ 'address' := binary(),
       'createdTimestamp' := integer(),
       'label' := binary()
     }.

encode(#{ 'address' := Address,
          'createdTimestamp' := CreatedTimestamp,
          'label' := Label
        }) ->
    #{ 'address' => Address,
       'createdTimestamp' => CreatedTimestamp,
       'label' => Label
     }.
