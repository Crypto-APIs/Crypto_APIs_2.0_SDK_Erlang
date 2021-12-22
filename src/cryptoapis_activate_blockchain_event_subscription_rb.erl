-module(cryptoapis_activate_blockchain_event_subscription_rb).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_rb/0]).

-type cryptoapis_activate_blockchain_event_subscription_rb() ::
    #{ 'context' => binary(),
       'data' := cryptoapis_activate_blockchain_event_subscription_rb_data:cryptoapis_activate_blockchain_event_subscription_rb_data()
     }.

encode(#{ 'context' := Context,
          'data' := Data
        }) ->
    #{ 'context' => Context,
       'data' => Data
     }.
