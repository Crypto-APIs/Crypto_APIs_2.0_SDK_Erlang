-module(cryptoapis_list_all_assets_by_wallet_idri).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_by_wallet_idri/0]).

-type cryptoapis_list_all_assets_by_wallet_idri() ::
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
