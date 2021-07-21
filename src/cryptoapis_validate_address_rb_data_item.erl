-module(cryptoapis_validate_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_validate_address_rb_data_item/0]).

-type cryptoapis_validate_address_rb_data_item() ::
    #{ 'address' := binary()
     }.

encode(#{ 'address' := Address
        }) ->
    #{ 'address' => Address
     }.
