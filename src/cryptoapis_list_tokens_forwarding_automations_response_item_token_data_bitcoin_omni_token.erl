-module(cryptoapis_list_tokens_forwarding_automations_response_item_token_data_bitcoin_omni_token).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_response_item_token_data_bitcoin_omni_token/0]).

-type cryptoapis_list_tokens_forwarding_automations_response_item_token_data_bitcoin_omni_token() ::
    #{ 'propertyId' := integer()
     }.

encode(#{ 'propertyId' := PropertyId
        }) ->
    #{ 'propertyId' => PropertyId
     }.
