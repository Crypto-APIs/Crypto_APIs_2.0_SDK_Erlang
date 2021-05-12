-module(cryptoapis_create_automatic_tokens_forwarding_response_item_token_data_ethereum_token).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_response_item_token_data_ethereum_token/0]).

-type cryptoapis_create_automatic_tokens_forwarding_response_item_token_data_ethereum_token() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
