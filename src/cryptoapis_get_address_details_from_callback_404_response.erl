-module(cryptoapis_get_address_details_from_callback_404_response).

-export([encode/1]).

-export_type([cryptoapis_get_address_details_from_callback_404_response/0]).

-type cryptoapis_get_address_details_from_callback_404_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_blockchain_data_address_event_subscription_not_found:cryptoapis_blockchain_data_address_event_subscription_not_found()
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
