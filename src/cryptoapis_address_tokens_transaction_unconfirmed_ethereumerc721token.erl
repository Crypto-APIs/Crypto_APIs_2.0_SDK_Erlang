-module(cryptoapis_address_tokens_transaction_unconfirmed_ethereumerc721token).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_unconfirmed_ethereumerc721token/0]).

-type cryptoapis_address_tokens_transaction_unconfirmed_ethereumerc721token() ::
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
