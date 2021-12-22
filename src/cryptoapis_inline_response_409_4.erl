-module(cryptoapis_inline_response_409_4).

-export([encode/1]).

-export_type([cryptoapis_inline_response_409_4/0]).

-type cryptoapis_inline_response_409_4() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_fungible_tokens_transaction_request_from_address_e409:cryptoapis_create_fungible_tokens_transaction_request_from_address_e409()
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
