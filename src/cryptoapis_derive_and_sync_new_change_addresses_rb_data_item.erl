-module(cryptoapis_derive_and_sync_new_change_addresses_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_change_addresses_rb_data_item/0]).

-type cryptoapis_derive_and_sync_new_change_addresses_rb_data_item() ::
    #{ 'extendedPublicKey' := binary()
     }.

encode(#{ 'extendedPublicKey' := ExtendedPublicKey
        }) ->
    #{ 'extendedPublicKey' => ExtendedPublicKey
     }.
