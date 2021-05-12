-module(cryptoapis_list_tokens_forwarding_automations_response_item_token_data).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_forwarding_automations_response_item_token_data/0]).

-type cryptoapis_list_tokens_forwarding_automations_response_item_token_data() ::
    #{ 'propertyId' := integer(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
