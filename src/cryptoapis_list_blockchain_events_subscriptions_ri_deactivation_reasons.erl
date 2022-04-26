-module(cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons).

-export([encode/1]).

-export_type([cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons/0]).

-type cryptoapis_list_blockchain_events_subscriptions_ri_deactivation_reasons() ::
    #{ 'reason' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'reason' := Reason,
          'timestamp' := Timestamp
        }) ->
    #{ 'reason' => Reason,
       'timestamp' => Timestamp
     }.
