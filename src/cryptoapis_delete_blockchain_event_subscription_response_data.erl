-module(cryptoapis_delete_blockchain_event_subscription_response_data).

-export([encode/1]).

-export_type([cryptoapis_delete_blockchain_event_subscription_response_data/0]).

-type cryptoapis_delete_blockchain_event_subscription_response_data() ::
    #{ 'item' := cryptoapis_delete_blockchain_event_subscription_response_item:cryptoapis_delete_blockchain_event_subscription_response_item()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
