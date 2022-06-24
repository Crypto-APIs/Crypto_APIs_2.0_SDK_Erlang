-module(cryptoapis_list_supported_tokens_403_response).

-export([encode/1]).

-export_type([cryptoapis_list_supported_tokens_403_response/0]).

-type cryptoapis_list_supported_tokens_403_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_supported_tokens_e403:cryptoapis_list_supported_tokens_e403()
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
