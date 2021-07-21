-module(cryptoapis_new_unconfirmed_coins_transactions_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_new_unconfirmed_coins_transactions_rb_data_item/0]).

-type cryptoapis_new_unconfirmed_coins_transactions_rb_data_item() ::
    #{ 'address' := binary(),
       'allowDuplicates' => boolean(),
       'callbackSecretKey' => binary(),
       'callbackUrl' := binary()
     }.

encode(#{ 'address' := Address,
          'allowDuplicates' := AllowDuplicates,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl
        }) ->
    #{ 'address' => Address,
       'allowDuplicates' => AllowDuplicates,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl
     }.
