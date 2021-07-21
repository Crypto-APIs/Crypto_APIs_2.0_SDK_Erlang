-module(cryptoapis_list_tokens_forwarding_automations_ritset).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_ritset/0]).

-type cryptoapis_list_tokens_forwarding_automations_ritset() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
