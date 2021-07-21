-module(cryptoapis_delete_automatic_tokens_forwarding_ritset).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_ritset/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_ritset() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
