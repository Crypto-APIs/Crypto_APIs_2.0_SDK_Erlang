-module(cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_token).

-export([encode/1]).

-export_type([cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_token/0]).

-type cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_token() ::
    #{ 'name' := binary(),
       'symbol' := binary(),
       'decimals' => binary(),
       'amount' := binary(),
       'contractAddress' := binary(),
       'tokenId' := binary()
     }.

encode(#{ 'name' := Name,
          'symbol' := Symbol,
          'decimals' := Decimals,
          'amount' := Amount,
          'contractAddress' := ContractAddress,
          'tokenId' := TokenId
        }) ->
    #{ 'name' => Name,
       'symbol' => Symbol,
       'decimals' => Decimals,
       'amount' => Amount,
       'contractAddress' => ContractAddress,
       'tokenId' => TokenId
     }.
