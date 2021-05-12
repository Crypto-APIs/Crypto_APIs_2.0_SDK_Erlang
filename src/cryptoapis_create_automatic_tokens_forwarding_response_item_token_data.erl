-module(cryptoapis_create_automatic_tokens_forwarding_response_item_token_data).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_response_item_token_data/0]).

-type cryptoapis_create_automatic_tokens_forwarding_response_item_token_data() ::
    #{ 'propertyId' := integer(),
       'contractAddress' := binary()
     }.

encode(#{ 'propertyId' := PropertyId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'propertyId' => PropertyId,
       'contractAddress' => ContractAddress
     }.
