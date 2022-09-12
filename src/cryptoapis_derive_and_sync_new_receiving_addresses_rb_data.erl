-module(cryptoapis_derive_and_sync_new_receiving_addresses_rb_data).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_receiving_addresses_rb_data/0]).

-type cryptoapis_derive_and_sync_new_receiving_addresses_rb_data() ::
    #{ 'item' := cryptoapis_derive_and_sync_new_receiving_addresses_rb_data_item:cryptoapis_derive_and_sync_new_receiving_addresses_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
