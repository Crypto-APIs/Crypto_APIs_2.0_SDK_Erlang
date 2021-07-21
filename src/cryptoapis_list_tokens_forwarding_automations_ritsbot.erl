-module(cryptoapis_list_tokens_forwarding_automations_ritsbot).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_ritsbot/0]).

-type cryptoapis_list_tokens_forwarding_automations_ritsbot() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
