-module(cryptoapis_list_synced_addresses_ri).

-export([encode/1]).

-export_type([cryptoapis_list_synced_addresses_ri/0]).

-type cryptoapis_list_synced_addresses_ri() ::
    #{ 'address' := binary(),
       'index' := integer()
     }.

encode(#{ 'address' := Address,
          'index' := Index
        }) ->
    #{ 'address' => Address,
       'index' => Index
     }.
