-module(cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_ethereum_erc20_token).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_ethereum_erc20_token/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data_ethereum_erc20_token() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
