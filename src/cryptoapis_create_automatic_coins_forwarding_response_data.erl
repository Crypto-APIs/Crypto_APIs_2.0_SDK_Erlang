-module(cryptoapis_create_automatic_coins_forwarding_response_data).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_response_data/0]).

-type cryptoapis_create_automatic_coins_forwarding_response_data() ::
    #{ 'item' := cryptoapis_create_automatic_coins_forwarding_response_item:cryptoapis_create_automatic_coins_forwarding_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
