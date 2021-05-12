-module(cryptoapis_delete_automatic_tokens_forwarding_response_item_token_data_bitcoin_omni_token).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_response_item_token_data_bitcoin_omni_token/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_response_item_token_data_bitcoin_omni_token() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
