-module(cryptoapis_get_blockchain_event_subscription_details_by_reference_idr_data).

-export([encode/1]).

-export_type([cryptoapis_get_blockchain_event_subscription_details_by_reference_idr_data/0]).

-type cryptoapis_get_blockchain_event_subscription_details_by_reference_idr_data() ::
    #{ 'item' := cryptoapis_get_blockchain_event_subscription_details_by_reference_idri:cryptoapis_get_blockchain_event_subscription_details_by_reference_idri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
