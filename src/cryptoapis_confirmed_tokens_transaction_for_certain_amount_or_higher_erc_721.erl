-module(cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_erc_721).

-export([encode/1]).

-export_type([cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_erc_721/0]).

-type cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_erc_721() ::
    #{ 'name' := binary(),
       'symbol' := binary(),
       'tokenId' := binary(),
       'contractAddress' := binary()
     }.

encode(#{ 'name' := Name,
          'symbol' := Symbol,
          'tokenId' := TokenId,
          'contractAddress' := ContractAddress
        }) ->
    #{ 'name' => Name,
       'symbol' => Symbol,
       'tokenId' => TokenId,
       'contractAddress' => ContractAddress
     }.
