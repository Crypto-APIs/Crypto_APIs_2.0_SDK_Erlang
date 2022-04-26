-module(cryptoapis_inline_response_400_48).

-export([encode/1]).

-export_type([cryptoapis_inline_response_400_48/0]).

-type cryptoapis_inline_response_400_48() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_wallet_transactions_e400:cryptoapis_list_wallet_transactions_e400()
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
