-module(cryptoapis_create_fungible_tokens_transaction_request_from_address_ris).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_tokens_transaction_request_from_address_ris/0]).

-type cryptoapis_create_fungible_tokens_transaction_request_from_address_ris() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
