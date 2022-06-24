-module(cryptoapis_list_zilliqa_transactions_by_address_400_response).

-export([encode/1]).

-export_type([cryptoapis_list_zilliqa_transactions_by_address_400_response/0]).

-type cryptoapis_list_zilliqa_transactions_by_address_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_list_zilliqa_transactions_by_address_e400:cryptoapis_list_zilliqa_transactions_by_address_e400()
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
