-module(cryptoapis_delete_automatic_tokens_forwarding_ritsbot).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_ritsbot/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_ritsbot() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
