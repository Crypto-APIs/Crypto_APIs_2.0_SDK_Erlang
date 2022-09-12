-module(cryptoapis_derive_and_sync_new_change_addresses_e403).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_change_addresses_e403/0]).

-type cryptoapis_derive_and_sync_new_change_addresses_e403() ::
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
