-module(cryptoapis_add_tokens_to_existing_from_address_rits).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_rits/0]).

-type cryptoapis_add_tokens_to_existing_from_address_rits() ::
    #{ 'propertyId' := integer(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
