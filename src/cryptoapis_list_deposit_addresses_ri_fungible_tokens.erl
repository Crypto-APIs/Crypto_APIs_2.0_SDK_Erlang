-module(cryptoapis_list_deposit_addresses_ri_fungible_tokens).

-export([encode/1]).

-export_type([cryptoapis_list_deposit_addresses_ri_fungible_tokens/0]).

-type cryptoapis_list_deposit_addresses_ri_fungible_tokens() ::
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
