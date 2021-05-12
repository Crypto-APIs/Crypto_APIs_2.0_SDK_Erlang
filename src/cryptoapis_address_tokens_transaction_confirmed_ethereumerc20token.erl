-module(cryptoapis_address_tokens_transaction_confirmed_ethereumerc20token).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_ethereumerc20token/0]).

-type cryptoapis_address_tokens_transaction_confirmed_ethereumerc20token() ::
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
