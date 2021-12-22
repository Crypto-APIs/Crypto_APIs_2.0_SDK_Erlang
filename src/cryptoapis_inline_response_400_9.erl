-module(cryptoapis_inline_response_400_9).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_9/0]).

-type cryptoapis_inline_response_400_9() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_zilliqa_transaction_details_by_transaction_ide400:cryptoapis_get_zilliqa_transaction_details_by_transaction_ide400()
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
