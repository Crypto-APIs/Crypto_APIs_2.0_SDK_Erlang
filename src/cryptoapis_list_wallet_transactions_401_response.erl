-module(cryptoapis_list_wallet_transactions_401_response).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_401_response/0]).

-type cryptoapis_list_wallet_transactions_401_response() ::
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
