-module(cryptoapis_add_tokens_to_existing_from_address_response_item_token_data_bitcoin_omni_token).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_response_item_token_data_bitcoin_omni_token/0]).

-type cryptoapis_add_tokens_to_existing_from_address_response_item_token_data_bitcoin_omni_token() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
