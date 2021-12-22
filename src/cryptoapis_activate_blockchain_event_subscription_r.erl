-module(cryptoapis_activate_blockchain_event_subscription_r).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_r/0]).

-type cryptoapis_activate_blockchain_event_subscription_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_activate_blockchain_event_subscription_r_data:cryptoapis_activate_blockchain_event_subscription_r_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
