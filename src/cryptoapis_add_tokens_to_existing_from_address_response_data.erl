-module(cryptoapis_add_tokens_to_existing_from_address_response_data).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_response_data/0]).

-type cryptoapis_add_tokens_to_existing_from_address_response_data() ::
    #{ 'item' := cryptoapis_add_tokens_to_existing_from_address_response_item:cryptoapis_add_tokens_to_existing_from_address_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
