-module(cryptoapis_inline_response_401_37).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_37/0]).

-type cryptoapis_inline_response_401_37() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_fungible_tokens_transaction_request_from_address_e401:cryptoapis_create_fungible_tokens_transaction_request_from_address_e401()
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
