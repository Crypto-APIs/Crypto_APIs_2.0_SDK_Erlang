-module(cryptoapis_create_automatic_tokens_forwarding_rits).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_rits/0]).

-type cryptoapis_create_automatic_tokens_forwarding_rits() ::
    #{ 'propertyId' := integer(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
