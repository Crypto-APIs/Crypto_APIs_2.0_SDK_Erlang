-module(cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri).

-export([encode/1]).

-export_type([cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri/0]).

-type cryptoapis_prepare_autxo_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri() ::
    #{ 'additionalData' => binary(),
       'fee' := binary(),
       'feePerByte' => binary(),
       'locktime' := integer(),
       'replaceable' := boolean(),
       'size' := integer(),
       'vin' := list(),
       'vout' := list()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'fee' := Fee,
          'feePerByte' := FeePerByte,
          'locktime' := Locktime,
          'replaceable' := Replaceable,
          'size' := Size,
          'vin' := Vin,
          'vout' := Vout
        }) ->
    #{ 'additionalData' => AdditionalData,
       'fee' => Fee,
       'feePerByte' => FeePerByte,
       'locktime' => Locktime,
       'replaceable' => Replaceable,
       'size' => Size,
       'vin' => Vin,
       'vout' => Vout
     }.
