-module(cryptoapis_generate_deposit_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_generate_deposit_address_rb_data_item/0]).

-type cryptoapis_generate_deposit_address_rb_data_item() ::
    #{ 'label' := binary()
     }.

encode(#{ 'label' := Label
        }) ->
    #{ 'label' => Label
     }.
