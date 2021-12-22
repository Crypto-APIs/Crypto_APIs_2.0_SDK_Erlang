-module(cryptoapis_inline_response_400_80).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_80/0]).

-type cryptoapis_inline_response_400_80() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_add_tokens_to_existing_from_address_e400:cryptoapis_add_tokens_to_existing_from_address_e400()
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
