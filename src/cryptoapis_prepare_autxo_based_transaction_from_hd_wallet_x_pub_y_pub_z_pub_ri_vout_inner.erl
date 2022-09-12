-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vout_inner).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vout_inner/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vout_inner() ::
    #{ 'address' := binary(),
       'satoshis' := integer(),
       'script' := binary()
     }.

encode(#{ 'address' := Address,
          'satoshis' := Satoshis,
          'script' := Script
        }) ->
    #{ 'address' => Address,
       'satoshis' => Satoshis,
       'script' => Script
     }.
