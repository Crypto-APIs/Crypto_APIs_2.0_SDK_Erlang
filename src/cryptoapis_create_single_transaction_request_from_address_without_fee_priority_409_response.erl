-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_409_response).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_409_response/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_409_response() ::
    #{ 'apiVersion' := binary(),
       'requestId' := binary(),
       'context' => binary(),
       'error' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_e409:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_e409()
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
