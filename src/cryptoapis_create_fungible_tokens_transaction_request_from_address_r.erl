-module(cryptoapis_create_fungible_tokens_transaction_request_from_address_r).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_tokens_transaction_request_from_address_r/0]).

-type cryptoapis_create_fungible_tokens_transaction_request_from_address_r() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'data' := cryptoapis_create_fungible_tokens_transaction_request_from_address_r_data:cryptoapis_create_fungible_tokens_transaction_request_from_address_r_data()
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
