-module(cryptoapis_add_tokens_to_existing_from_address_ritsbot).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_ritsbot/0]).

-type cryptoapis_add_tokens_to_existing_from_address_ritsbot() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
