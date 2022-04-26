-module(cryptoapis_inline_response_403_94).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_94/0]).

-type cryptoapis_inline_response_403_94() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_add_tokens_to_existing_from_address_e403:cryptoapis_add_tokens_to_existing_from_address_e403()
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
