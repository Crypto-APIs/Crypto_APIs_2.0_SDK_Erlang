-module(cryptoapis_list_tokens_forwarding_automations_response_item_token_data_ethereum_token).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_response_item_token_data_ethereum_token/0]).

-type cryptoapis_list_tokens_forwarding_automations_response_item_token_data_ethereum_token() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
