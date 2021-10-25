-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_r).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_r/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_coins_transaction_from_address_for_whole_amount_r_data:cryptoapis_create_coins_transaction_from_address_for_whole_amount_r_data()
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
