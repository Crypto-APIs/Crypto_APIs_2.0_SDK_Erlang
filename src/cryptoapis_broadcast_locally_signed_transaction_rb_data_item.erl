-module(cryptoapis_broadcast_locally_signed_transaction_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_rb_data_item/0]).

-type cryptoapis_broadcast_locally_signed_transaction_rb_data_item() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'signedTransactionHex' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'signedTransactionHex' := SignedTransactionHex
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'signedTransactionHex' => SignedTransactionHex
     }.
