-module(cryptoapis_add_tokens_to_existing_from_address_401_response).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_401_response/0]).

-type cryptoapis_add_tokens_to_existing_from_address_401_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_add_tokens_to_existing_from_address_e401:cryptoapis_add_tokens_to_existing_from_address_e401()
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
