-module(cryptoapis_inline_response_401_45).

-export([encode/1]).

-export_type([cryptoapis_inline_response_401_45/0]).

-type cryptoapis_inline_response_401_45() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_wallet_transactions_e401:cryptoapis_list_wallet_transactions_e401()
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
