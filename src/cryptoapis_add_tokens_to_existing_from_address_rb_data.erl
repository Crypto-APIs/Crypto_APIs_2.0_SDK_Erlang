-module(cryptoapis_add_tokens_to_existing_from_address_rb_data).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_rb_data/0]).

-type cryptoapis_add_tokens_to_existing_from_address_rb_data() ::
    #{ 'item' := cryptoapis_add_tokens_to_existing_from_address_rb_data_item:cryptoapis_add_tokens_to_existing_from_address_rb_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
