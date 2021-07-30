-module(cryptoapis_broadcast_locally_signed_transaction_r).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_r/0]).

-type cryptoapis_broadcast_locally_signed_transaction_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_broadcast_locally_signed_transaction_r_data:cryptoapis_broadcast_locally_signed_transaction_r_data()
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
