-module(cryptoapis_mined_transaction_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_rb_data_item/0]).

-type cryptoapis_mined_transaction_rb_data_item() ::
    #{ 'allowDuplicates' => boolean(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'transactionId' := binary()
     }.

encode(#{ 'allowDuplicates' := AllowDuplicates,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'transactionId' := TransactionId
        }) ->
    #{ 'allowDuplicates' => AllowDuplicates,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'transactionId' => TransactionId
     }.
