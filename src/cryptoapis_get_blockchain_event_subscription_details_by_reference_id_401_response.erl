-module(cryptoapis_get_blockchain_event_subscription_details_by_reference_id_401_response).

-export([encode/1]).

-export_type([cryptoapis_get_blockchain_event_subscription_details_by_reference_id_401_response/0]).

-type cryptoapis_get_blockchain_event_subscription_details_by_reference_id_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_blockchain_event_subscription_details_by_reference_ide401:cryptoapis_get_blockchain_event_subscription_details_by_reference_ide401()
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