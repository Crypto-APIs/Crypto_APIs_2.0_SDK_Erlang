-module(cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response_item/0]).

-type cryptoapis_get_hd_walletx_pub_y_pub_z_pub_details_response_item() ::
    #{ 'confirmedBalance' := binary(),
       'totalReceived' := binary(),
       'totalSpent' := binary()
     }.

encode(#{ 'confirmedBalance' := ConfirmedBalance,
          'totalReceived' := TotalReceived,
          'totalSpent' := TotalSpent
        }) ->
    #{ 'confirmedBalance' => ConfirmedBalance,
       'totalReceived' => TotalReceived,
       'totalSpent' => TotalSpent
     }.
