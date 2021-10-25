-module(cryptoapis_tokens_forwarding_success_erc_20).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success_erc_20/0]).

-type cryptoapis_tokens_forwarding_success_erc_20() ::
    #{ 'name' := binary(),
       'symbol' := binary(),
       'decimals' => binary(),
       'amount' := binary(),
       'contractAddress' := binary()
     }.

encode(#{ 'name' := Name,
          'symbol' := Symbol,
          'decimals' := Decimals,
          'amount' := Amount,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'name' => Name,
       'symbol' => Symbol,
       'decimals' => Decimals,
       'amount' => Amount,
       'contractAddress' => ContractAddress
     }.
