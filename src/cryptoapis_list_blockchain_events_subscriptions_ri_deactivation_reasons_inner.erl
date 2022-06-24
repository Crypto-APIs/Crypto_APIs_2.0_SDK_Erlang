-module(cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons_inner).

-export([encode/1]).

-export_type([cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons_inner/0]).

-type cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons_inner() ::
    #{ 'reason' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'reason' := Reason,
          'timestamp' := Timestamp
        }) ->
    #{ 'reason' => Reason,
       'timestamp' => Timestamp
     }.
