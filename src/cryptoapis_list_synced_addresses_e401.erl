-module(cryptoapis_list_synced_addresses_e401).

-export([encode/1]).

-export_type([cryptoapis_list_synced_addresses_e401/0]).

-type cryptoapis_list_synced_addresses_e401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
