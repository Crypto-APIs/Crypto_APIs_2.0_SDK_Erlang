-module(cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb_data_item/0]).

-type cryptoapis_new_confirmed_internal_transactions_and_each_confirmation_rb_data_item() ::
    #{ 'address' := binary(),
       'allowDuplicates' := boolean(),
       'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' := integer()
     }.

encode(#{ 'address' := Address,
          'allowDuplicates' := AllowDuplicates,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount
        }) ->
    #{ 'address' => Address,
       'allowDuplicates' => AllowDuplicates,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount
     }.
