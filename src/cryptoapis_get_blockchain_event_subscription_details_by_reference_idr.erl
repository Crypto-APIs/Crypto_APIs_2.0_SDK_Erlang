-module(cryptoapis_get_blockchain_event_subscription_details_by_reference_idr).

-export([encode/1]).

-export_type([cryptoapis_get_blockchain_event_subscription_details_by_reference_idr/0]).

-type cryptoapis_get_blockchain_event_subscription_details_by_reference_idr() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_blockchain_event_subscription_details_by_reference_idr_data:cryptoapis_get_blockchain_event_subscription_details_by_reference_idr_data()
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
