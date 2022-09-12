-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_400_response).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_400_response/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_400_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_e400:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_e400()
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
