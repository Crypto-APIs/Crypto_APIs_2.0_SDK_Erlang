-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_fungible_tokens_inner/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_fungible_tokens_inner() ::
    #{ 'amount' := binary(),
       'identifier' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'amount' := Amount,
          'identifier' := Identifier,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'amount' => Amount,
       'identifier' => Identifier,
       'symbol' => Symbol,
       'type' => Type
     }.
