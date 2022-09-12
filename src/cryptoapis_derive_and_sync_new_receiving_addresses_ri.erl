-module(cryptoapis_derive_and_sync_new_receiving_addresses_ri).

-export([encode/1]).

-export_type([cryptoapis_derive_and_sync_new_receiving_addresses_ri/0]).

-type cryptoapis_derive_and_sync_new_receiving_addresses_ri() ::
    #{ 'address' := binary(),
       'addressFormat' := binary(),
       'addressType' := binary(),
       'derivationType' := binary(),
       'index' := binary()
     }.

encode(#{ 'address' := Address,
          'addressFormat' := AddressFormat,
          'addressType' := AddressType,
          'derivationType' := DerivationType,
          'index' := Index
        }) ->
    #{ 'address' => Address,
       'addressFormat' => AddressFormat,
       'addressType' => AddressType,
       'derivationType' => DerivationType,
       'index' => Index
     }.
