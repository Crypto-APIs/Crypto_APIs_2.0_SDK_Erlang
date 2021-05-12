-module(cryptoapis_mined_transaction_response).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_response/0]).

-type cryptoapis_mined_transaction_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_mined_transaction_response_data:cryptoapis_mined_transaction_response_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'requestId' := RequestId,
          'context' := Context,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'requestId' => RequestId,
       'context' => Context,
       'data' => Data
     }.
