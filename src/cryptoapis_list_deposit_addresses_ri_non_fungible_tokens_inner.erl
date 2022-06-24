-module(cryptoapis_list_deposit_addresses_ri_non_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_list_deposit_addresses_ri_non_fungible_tokens_inner/0]).

-type cryptoapis_list_deposit_addresses_ri_non_fungible_tokens_inner() ::
    #{ 'identifier' := binary(),
       'name' := binary(),
       'symbol' := binary(),
       'tokenId' := binary(),
       'type' := binary()
     }.

encode(#{ 'identifier' := Identifier,
          'name' := Name,
          'symbol' := Symbol,
          'tokenId' := TokenId,
          'type' := Type
        }) ->
    #{ 'identifier' => Identifier,
       'name' => Name,
       'symbol' => Symbol,
       'tokenId' => TokenId,
       'type' => Type
     }.
