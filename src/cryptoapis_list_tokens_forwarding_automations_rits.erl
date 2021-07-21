-module(cryptoapis_list_tokens_forwarding_automations_rits).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_rits/0]).

-type cryptoapis_list_tokens_forwarding_automations_rits() ::
    #{ 'propertyId' := integer(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
