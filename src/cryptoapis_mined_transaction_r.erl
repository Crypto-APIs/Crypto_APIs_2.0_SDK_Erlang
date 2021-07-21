-module(cryptoapis_mined_transaction_r).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_r/0]).

-type cryptoapis_mined_transaction_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_mined_transaction_r_data:cryptoapis_mined_transaction_r_data()
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
