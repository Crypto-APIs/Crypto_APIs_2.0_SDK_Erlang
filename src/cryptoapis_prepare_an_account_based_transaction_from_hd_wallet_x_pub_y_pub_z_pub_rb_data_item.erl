-module(cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item/0]).

-type cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item() ::
    #{ 'additionalData' => binary(),
       'amount' := binary(),
       'fee' := cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee:cryptoapis_prepare_an_account_based_transaction_from_hd_wallet_x_pub_y_pub_z_pub_rb_data_item_fee(),
       'nonce' => binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'transactionType' => binary(),
       'xpub' := binary()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'amount' := Amount,
          'fee' := Fee,
          'nonce' := Nonce,
          'recipient' := Recipient,
          'sender' := Sender,
          'transactionType' := TransactionType,
          'xpub' := Xpub
        }) ->
    #{ 'additionalData' => AdditionalData,
       'amount' => Amount,
       'fee' => Fee,
       'nonce' => Nonce,
       'recipient' => Recipient,
       'sender' => Sender,
       'transactionType' => TransactionType,
       'xpub' => Xpub
     }.
