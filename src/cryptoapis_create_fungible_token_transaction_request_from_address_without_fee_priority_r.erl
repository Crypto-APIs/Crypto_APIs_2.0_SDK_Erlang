-module(cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r/0]).

-type cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r_data:cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_r_data()
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
