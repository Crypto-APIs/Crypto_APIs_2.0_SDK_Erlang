-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_e400).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_e400/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_e400() ::
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
