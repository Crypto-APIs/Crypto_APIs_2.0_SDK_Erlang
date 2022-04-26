-module(cryptoapis_inline_response_400_49).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_49/0]).

-type cryptoapis_inline_response_400_49() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_get_wallet_transaction_details_by_transaction_ide400:cryptoapis_get_wallet_transaction_details_by_transaction_ide400()
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
