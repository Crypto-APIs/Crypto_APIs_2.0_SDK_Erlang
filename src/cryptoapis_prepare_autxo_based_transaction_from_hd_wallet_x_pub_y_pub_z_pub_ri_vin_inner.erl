-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vin_inner).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vin_inner/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_vin_inner() ::
    #{ 'address' := binary(),
       'change' => integer(),
       'derivationIndex' => integer(),
       'outputIndex' := integer(),
       'satoshis' := integer(),
       'script' := binary(),
       'sighash' := binary(),
       'transactionId' := binary()
     }.

encode(#{ 'address' := Address,
          'change' := Change,
          'derivationIndex' := DerivationIndex,
          'outputIndex' := OutputIndex,
          'satoshis' := Satoshis,
          'script' := Script,
          'sighash' := Sighash,
          'transactionId' := TransactionId
        }) ->
    #{ 'address' => Address,
       'change' => Change,
       'derivationIndex' => DerivationIndex,
       'outputIndex' => OutputIndex,
       'satoshis' => Satoshis,
       'script' => Script,
       'sighash' => Sighash,
       'transactionId' => TransactionId
     }.
