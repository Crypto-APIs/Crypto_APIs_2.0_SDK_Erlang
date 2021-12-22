-module(cryptoapis_inline_response_400_67).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_67/0]).

-type cryptoapis_inline_response_400_67() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_activate_blockchain_event_subscription_e400:cryptoapis_activate_blockchain_event_subscription_e400()
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
