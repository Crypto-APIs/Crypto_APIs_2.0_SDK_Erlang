-module(cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses).

-export([encode/1]).

-export_type([cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses/0]).

-type cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri_addresses() ::
    #{ 'address' := binary(),
       'index' := integer()
     }.

encode(#{ 'address' := Address,
          'index' := Index
        }) ->
    #{ 'address' => Address,
       'index' => Index
     }.
