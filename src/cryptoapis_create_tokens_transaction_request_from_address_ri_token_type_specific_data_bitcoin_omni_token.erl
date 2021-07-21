-module(cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_bitcoin_omni_token).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_bitcoin_omni_token/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_bitcoin_omni_token() ::
    #{ 'propertyId' := binary()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
