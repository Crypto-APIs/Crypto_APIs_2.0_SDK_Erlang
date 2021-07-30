-module(cryptoapis_generate_deposit_address_rb_data).

-export([encode/1]).

-export_type([cryptoapis_generate_deposit_address_rb_data/0]).

-type cryptoapis_generate_deposit_address_rb_data() ::
    #{ 'item' := cryptoapis_generate_deposit_address_rb_data_item:cryptoapis_generate_deposit_address_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
