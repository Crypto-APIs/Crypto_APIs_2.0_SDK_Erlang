-module(cryptoapis_list_deposit_addresses_ri).

-export([encode/1]).

-export_type([cryptoapis_list_deposit_addresses_ri/0]).

-type cryptoapis_list_deposit_addresses_ri() ::
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
