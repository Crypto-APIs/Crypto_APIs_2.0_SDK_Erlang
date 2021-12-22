-module(cryptoapis_inline_response_404_3).

-export([encode/1]).

-export_type([cryptoapis_inline_response_404_3/0]).

-type cryptoapis_inline_response_404_3() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_blockchain_data_internal_transaction_not_found:cryptoapis_blockchain_data_internal_transaction_not_found()
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
