-module(cryptoapis_list_deposit_addresses_ri).

-export([encode/1]).

-export_type([cryptoapis_list_deposit_addresses_ri/0]).

-type cryptoapis_list_deposit_addresses_ri() ::
    #{ 'address' := binary(),
       'confirmedBalance' := cryptoapis_list_deposit_addresses_ri_confirmed_balance:cryptoapis_list_deposit_addresses_ri_confirmed_balance(),
       'createdTimestamp' := integer(),
       'fungibleTokens' := list(),
       'index' := binary(),
       'label' := binary(),
       'nonFungibleTokens' := list()
     }.

encode(#{ 'address' := Address,
          'confirmedBalance' := ConfirmedBalance,
          'createdTimestamp' := CreatedTimestamp,
          'fungibleTokens' := FungibleTokens,
          'index' := Index,
          'label' := Label,
          'nonFungibleTokens' := NonFungibleTokens
        }) ->
    #{ 'address' => Address,
       'confirmedBalance' => ConfirmedBalance,
       'createdTimestamp' => CreatedTimestamp,
       'fungibleTokens' => FungibleTokens,
       'index' => Index,
       'label' => Label,
       'nonFungibleTokens' => NonFungibleTokens
     }.
