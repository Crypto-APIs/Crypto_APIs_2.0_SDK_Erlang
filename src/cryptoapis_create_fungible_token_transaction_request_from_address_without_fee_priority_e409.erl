-module(cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_e409).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_e409/0]).

-type cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_e409() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
