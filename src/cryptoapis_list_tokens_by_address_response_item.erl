-module(cryptoapis_list_tokens_by_address_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_tokens_by_address_response_item/0]).

-type cryptoapis_list_tokens_by_address_response_item() ::
    #{ 'confirmedBalance' := binary(),
       'contractAddress' := binary(),
       'name' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance,
          'contractAddress' := ContractAddress,
          'name' := Name,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance,
       'contractAddress' => ContractAddress,
       'name' => Name,
       'symbol' => Symbol,
       'type' => Type
     }.
