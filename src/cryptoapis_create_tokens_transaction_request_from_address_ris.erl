-module(cryptoapis_create_tokens_transaction_request_from_address_ris).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ris/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ris() ::
    #{ 'propertyId' := binary(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
