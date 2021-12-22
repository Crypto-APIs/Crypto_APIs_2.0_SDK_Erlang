-module(cryptoapis_activate_blockchain_event_subscription_r_data).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_r_data/0]).

-type cryptoapis_activate_blockchain_event_subscription_r_data() ::
    #{ 'item' := cryptoapis_activate_blockchain_event_subscription_ri:cryptoapis_activate_blockchain_event_subscription_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
