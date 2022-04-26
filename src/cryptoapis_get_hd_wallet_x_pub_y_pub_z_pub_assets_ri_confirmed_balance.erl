-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_confirmed_balance).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_confirmed_balance/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_assets_ri_confirmed_balance() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
