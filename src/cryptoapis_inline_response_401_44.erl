-module(cryptoapis_inline_response_401_44).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_44/0]).

-type cryptoapis_inline_response_401_44() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_transaction_request_details_e401:cryptoapis_get_transaction_request_details_e401()
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
