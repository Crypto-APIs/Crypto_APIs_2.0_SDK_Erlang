-module(cryptoapis_create_tokens_transaction_request_from_address_rise).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_rise/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_rise() ::
    #{ 'contractAddress' := binary()
     }.

encode(#{ 'contractAddress' := ContractAddress
        }) ->
    #{ 'contractAddress' => ContractAddress
     }.
