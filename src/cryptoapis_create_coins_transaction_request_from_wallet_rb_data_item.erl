-module(cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_rb_data_item() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'prepareStrategy' => binary(),
       'recipients' := list()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'prepareStrategy' := PrepareStrategy,
          'recipients' := Recipients
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'prepareStrategy' => PrepareStrategy,
       'recipients' => Recipients
     }.
