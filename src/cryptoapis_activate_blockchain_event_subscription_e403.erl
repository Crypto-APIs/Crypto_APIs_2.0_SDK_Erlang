-module(cryptoapis_activate_blockchain_event_subscription_e403).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_e403/0]).

-type cryptoapis_activate_blockchain_event_subscription_e403() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
