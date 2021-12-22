-module(cryptoapis_inline_response_403_4).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_4/0]).

-type cryptoapis_inline_response_403_4() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_transaction_details_by_transaction_ide403:cryptoapis_get_transaction_details_by_transaction_ide403()
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