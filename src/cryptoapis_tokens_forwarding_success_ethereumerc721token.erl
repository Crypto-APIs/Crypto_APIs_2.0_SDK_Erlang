-module(cryptoapis_tokens_forwarding_success_ethereumerc721token).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success_ethereumerc721token/0]).

-type cryptoapis_tokens_forwarding_success_ethereumerc721token() ::
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
