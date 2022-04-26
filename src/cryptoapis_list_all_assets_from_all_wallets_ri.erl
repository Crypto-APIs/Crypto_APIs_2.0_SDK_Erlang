-module(cryptoapis_list_all_assets_from_all_wallets_ri).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri() ::
    #{ 'coins' := list(),
       'fungibleTokens' := list(),
       'nonFungibleTokens' := list(),
       'walletId' := binary(),
       'walletName' := binary()
     }.

encode(#{ 'coins' := Coins,
          'fungibleTokens' := FungibleTokens,
          'nonFungibleTokens' := NonFungibleTokens,
          'walletId' := WalletId,
          'walletName' := WalletName
        }) ->
    #{ 'coins' => Coins,
       'fungibleTokens' => FungibleTokens,
       'nonFungibleTokens' => NonFungibleTokens,
       'walletId' => WalletId,
       'walletName' => WalletName
     }.
