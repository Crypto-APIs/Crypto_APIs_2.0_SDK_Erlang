-module(cryptoapis_inline_response_401_4).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_4/0]).

-type cryptoapis_inline_response_401_4() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_transaction_details_by_transaction_ide401:cryptoapis_get_transaction_details_by_transaction_ide401()
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
