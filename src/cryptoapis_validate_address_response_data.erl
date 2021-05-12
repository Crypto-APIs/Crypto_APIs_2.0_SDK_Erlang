-module(cryptoapis_validate_address_response_data).

-export([encode/1]).

-export_type([cryptoapis_validate_address_response_data/0]).

-type cryptoapis_validate_address_response_data() ::
    #{ 'item' := cryptoapis_validate_address_response_item:cryptoapis_validate_address_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
