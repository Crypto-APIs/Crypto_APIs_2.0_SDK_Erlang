-module(cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data() ::
    #{ 'propertyId' := binary(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
