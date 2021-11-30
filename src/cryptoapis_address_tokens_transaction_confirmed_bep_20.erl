-module(cryptoapis_address_tokens_transaction_confirmed_bep_20).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_bep_20/0]).

-type cryptoapis_address_tokens_transaction_confirmed_bep_20() ::
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