-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e401).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e401/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e401() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
