-module(cryptoapis_inline_response_403_48).

-export([encode/1]).

-export_type([cryptoapis_inline_response_403_48/0]).

-type cryptoapis_inline_response_403_48() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_wallet_transactions_e403:cryptoapis_list_wallet_transactions_e403()
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
