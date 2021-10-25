-module(cryptoapis_address_tokens_transaction_unconfirmed_erc_721).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_unconfirmed_erc_721/0]).

-type cryptoapis_address_tokens_transaction_unconfirmed_erc_721() ::
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
