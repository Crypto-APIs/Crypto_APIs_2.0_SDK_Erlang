-module(cryptoapis_inline_response_403_80).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_80/0]).

-type cryptoapis_inline_response_403_80() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_blockchain_event_subscription_details_by_reference_ide403:cryptoapis_get_blockchain_event_subscription_details_by_reference_ide403()
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
