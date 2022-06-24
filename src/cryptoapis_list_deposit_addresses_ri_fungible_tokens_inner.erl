-module(cryptoapis_list_deposit_addresses_ri_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_list_deposit_addresses_ri_fungible_tokens_inner/0]).

-type cryptoapis_list_deposit_addresses_ri_fungible_tokens_inner() ::
    #{ 'amount' := binary(),
       'identifier' := binary(),
       'name' := binary(),
       'symbol' := binary(),
       'tokenDecimals' := integer(),
       'type' := binary()
     }.

encode(#{ 'amount' := Amount,
          'identifier' := Identifier,
          'name' := Name,
          'symbol' := Symbol,
          'tokenDecimals' := TokenDecimals,
          'type' := Type
        }) ->
    #{ 'amount' => Amount,
       'identifier' => Identifier,
       'name' => Name,
       'symbol' => Symbol,
       'tokenDecimals' => TokenDecimals,
       'type' => Type
     }.
