-module(cryptoapis_create_tokens_transaction_request_from_address_risb).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_risb/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_risb() ::
    #{ 'propertyId' := binary()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
