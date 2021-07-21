-module(cryptoapis_add_tokens_to_existing_from_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_r_data/0]).

-type cryptoapis_add_tokens_to_existing_from_address_r_data() ::
    #{ 'item' := cryptoapis_add_tokens_to_existing_from_address_ri:cryptoapis_add_tokens_to_existing_from_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
