-module(cryptoapis_get_token_details_by_contract_address_r_data).

-export([encode/1]).

-export_type([cryptoapis_get_token_details_by_contract_address_r_data/0]).

-type cryptoapis_get_token_details_by_contract_address_r_data() ::
    #{ 'item' := cryptoapis_get_token_details_by_contract_address_ri:cryptoapis_get_token_details_by_contract_address_ri()
     }.

encode(#{ 'item' := Item
        }) ->
    #{ 'item' => Item
     }.
