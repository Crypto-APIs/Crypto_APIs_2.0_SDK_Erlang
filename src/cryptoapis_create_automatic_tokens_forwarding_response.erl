-module(cryptoapis_create_automatic_tokens_forwarding_response).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_response/0]).

-type cryptoapis_create_automatic_tokens_forwarding_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_automatic_tokens_forwarding_response_data:cryptoapis_create_automatic_tokens_forwarding_response_data()
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
