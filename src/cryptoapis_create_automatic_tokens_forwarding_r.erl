-module(cryptoapis_create_automatic_tokens_forwarding_r).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_r/0]).

-type cryptoapis_create_automatic_tokens_forwarding_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_automatic_tokens_forwarding_r_data:cryptoapis_create_automatic_tokens_forwarding_r_data()
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
