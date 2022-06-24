-module(cryptoapis_activate_blockchain_event_subscription_401_response).

-export([encode/1]).

-export_type([cryptoapis_activate_blockchain_event_subscription_401_response/0]).

-type cryptoapis_activate_blockchain_event_subscription_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_activate_blockchain_event_subscription_e401:cryptoapis_activate_blockchain_event_subscription_e401()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'error' := Error
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'error' => Error
     }.
