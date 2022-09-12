-module(cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri).

-export([encode/1]).

-export_type([cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri/0]).

-type cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri() ::
    #{ 'amount' := binary(),
       'dataHex' := binary(),
       'derivationIndex' := integer(),
       'fee' := cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_fee:cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_ri_fee(),
       'nonce' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'sigHash' := binary(),
       'transactionType' := binary()
     }.

encode(#{ 'amount' := Amount,
          'dataHex' := DataHex,
          'derivationIndex' := DerivationIndex,
          'fee' := Fee,
          'nonce' := Nonce,
          'recipient' := Recipient,
          'sender' := Sender,
          'sigHash' := SigHash,
          'transactionType' := TransactionType
        }) ->
    #{ 'amount' => Amount,
       'dataHex' => DataHex,
       'derivationIndex' => DerivationIndex,
       'fee' => Fee,
       'nonce' => Nonce,
       'recipient' => Recipient,
       'sender' => Sender,
       'sigHash' => SigHash,
       'transactionType' => TransactionType
     }.
