-module(cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_ri).

-export([encode/1]).

-export_type([cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_ri/0]).

-type cryptoapis_list_hd_wallet_x_pub_y_pub_z_pub_utxos_ri() ::
    #{ 'address' := binary(),
       'addressPath' := binary(),
       'amount' := binary(),
       'derivation' := binary(),
       'index' := integer(),
       'isAvailable' := boolean(),
       'isConfirmed' := boolean(),
       'referenceId' := binary(),
       'transactionId' := binary()
     }.

encode(#{ 'address' := Address,
          'addressPath' := AddressPath,
          'amount' := Amount,
          'derivation' := Derivation,
          'index' := Index,
          'isAvailable' := IsAvailable,
          'isConfirmed' := IsConfirmed,
          'referenceId' := ReferenceId,
          'transactionId' := TransactionId
        }) ->
    #{ 'address' => Address,
       'addressPath' => AddressPath,
       'amount' => Amount,
       'derivation' => Derivation,
       'index' => Index,
       'isAvailable' => IsAvailable,
       'isConfirmed' => IsConfirmed,
       'referenceId' => ReferenceId,
       'transactionId' => TransactionId
     }.
