-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e422).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e422/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_transactions_e422() ::
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
