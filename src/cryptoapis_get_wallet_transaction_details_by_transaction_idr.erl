-module(cryptoapis_get_wallet_transaction_details_by_transaction_idr).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idr/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idr() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_get_wallet_transaction_details_by_transaction_idr_data:cryptoapis_get_wallet_transaction_details_by_transaction_idr_data()
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
