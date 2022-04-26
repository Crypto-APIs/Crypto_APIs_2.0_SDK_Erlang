-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri() ::
    #{ 'fungibleTokens' => list(),
       'nonFungibleTokens' => list(),
       'confirmedBalance' := cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_confirmed_balance:cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_confirmed_balance()
     }.

encode(#{ 'fungibleTokens' := FungibleTokens,
          'nonFungibleTokens' := NonFungibleTokens,
          'confirmedBalance' := ConfirmedBalance
        }) ->
    #{ 'fungibleTokens' => FungibleTokens,
       'nonFungibleTokens' => NonFungibleTokens,
       'confirmedBalance' => ConfirmedBalance
     }.
