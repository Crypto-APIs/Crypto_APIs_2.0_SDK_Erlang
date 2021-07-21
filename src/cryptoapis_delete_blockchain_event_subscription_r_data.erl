-module(cryptoapis_delete_blockchain_event_subscription_r_data).

-export([encode/1]).

-export_type([cryptoapis_delete_blockchain_event_subscription_r_data/0]).

-type cryptoapis_delete_blockchain_event_subscription_r_data() ::
    #{ 'item' := cryptoapis_delete_blockchain_event_subscription_ri:cryptoapis_delete_blockchain_event_subscription_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
