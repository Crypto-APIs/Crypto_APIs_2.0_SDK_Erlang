-module(cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri).

-export([encode/1]).

-export_type([cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri/0]).

-type cryptoapis_derive_hd_wallet_x_pub_y_pub_z_pub_change_or_receiving_addresses_ri() ::
    #{ 'addresses' := list()
     }.

encode(#{ 'addresses' := Addresses
        }) ->
    #{ 'addresses' => Addresses
     }.
