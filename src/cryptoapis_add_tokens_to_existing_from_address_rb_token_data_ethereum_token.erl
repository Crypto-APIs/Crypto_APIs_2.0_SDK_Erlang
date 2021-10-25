-module(cryptoapis_add_tokens_to_existing_from_address_rb_token_data_ethereum_token).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_rb_token_data_ethereum_token/0]).

-type cryptoapis_add_tokens_to_existing_from_address_rb_token_data_ethereum_token() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
