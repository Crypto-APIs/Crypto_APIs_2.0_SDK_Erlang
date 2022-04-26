-module(cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_ri).

-export([encode/1]).

-export_type([cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_ri/0]).

-type cryptoapis_get_hd_wallet_x_pub_y_pub_z_pub_details_ri() ::
    #{ 'confirmedBalance' := binary(),
       'totalReceived' => binary(),
       'totalSpent' => binary()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance,
          'totalReceived' := TotalReceived,
          'totalSpent' := TotalSpent
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance,
       'totalReceived' => TotalReceived,
       'totalSpent' => TotalSpent
     }.
