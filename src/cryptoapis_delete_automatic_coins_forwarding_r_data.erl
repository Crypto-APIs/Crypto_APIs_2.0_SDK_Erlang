-module(cryptoapis_delete_automatic_coins_forwarding_r_data).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_coins_forwarding_r_data/0]).

-type cryptoapis_delete_automatic_coins_forwarding_r_data() ::
    #{ 'item' := cryptoapis_delete_automatic_coins_forwarding_ri:cryptoapis_delete_automatic_coins_forwarding_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
