-module(cryptoapis_create_fungible_tokens_transaction_request_from_address_e401).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_tokens_transaction_request_from_address_e401/0]).

-type cryptoapis_create_fungible_tokens_transaction_request_from_address_e401() ::
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
