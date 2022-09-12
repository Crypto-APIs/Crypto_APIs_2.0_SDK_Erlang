-module(cryptoapis_derive_and_sync_new_receiving_addresses_rb).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_receiving_addresses_rb/0]).

-type cryptoapis_derive_and_sync_new_receiving_addresses_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_derive_and_sync_new_receiving_addresses_rb_data:cryptoapis_derive_and_sync_new_receiving_addresses_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
