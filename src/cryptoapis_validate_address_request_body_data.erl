-module(cryptoapis_validate_address_request_body_data).

-export([encode/1]).

-export_type([cryptoapis_validate_address_request_body_data/0]).

-type cryptoapis_validate_address_request_body_data() ::
    #{ 'item' := cryptoapis_validate_address_request_body_data_item:cryptoapis_validate_address_request_body_data_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
