-module(cryptoapis_delete_blockchain_event_subscription_400_response).

-export([encode/1]).

-export_type([cryptoapis_delete_blockchain_event_subscription_400_response/0]).

-type cryptoapis_delete_blockchain_event_subscription_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_delete_blockchain_event_subscription_e400:cryptoapis_delete_blockchain_event_subscription_e400()
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
