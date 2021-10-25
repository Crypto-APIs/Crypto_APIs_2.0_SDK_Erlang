-module(cryptoapis_add_tokens_to_existing_from_address_ritset).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_ritset/0]).

-type cryptoapis_add_tokens_to_existing_from_address_ritset() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
