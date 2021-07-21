-module(cryptoapis_add_tokens_to_existing_from_address_ritseet).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_ritseet/0]).

-type cryptoapis_add_tokens_to_existing_from_address_ritseet() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
