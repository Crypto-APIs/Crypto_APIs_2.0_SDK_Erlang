-module(cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses_inner).

-export([encode/1]).

-export_type([cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses_inner/0]).

-type cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses_inner() ::
    #{ 'address' := binary(),
       'index' := integer()
     }.

encode(#{ 'address' := Address,
          'index' := Index
        }) ->
    #{ 'address' => Address,
       'index' => Index
     }.
