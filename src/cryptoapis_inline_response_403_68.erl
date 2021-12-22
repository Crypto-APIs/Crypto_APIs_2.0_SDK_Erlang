-module(cryptoapis_inline_response_403_68).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_68/0]).

-type cryptoapis_inline_response_403_68() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_delete_blockchain_event_subscription_e403:cryptoapis_delete_blockchain_event_subscription_e403()
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
