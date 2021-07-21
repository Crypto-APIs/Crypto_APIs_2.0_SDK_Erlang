-module(cryptoapis_create_automatic_coins_forwarding_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_rb_data_item/0]).

-type cryptoapis_create_automatic_coins_forwarding_rb_data_item() ::
    #{ 'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'feePriority' := binary(),
       'minimumTransferAmount' := binary(),
       'toAddress' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'feePriority' := FeePriority,
          'minimumTransferAmount' := MinimumTransferAmount,
          'toAddress' := ToAddress
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'feePriority' => FeePriority,
       'minimumTransferAmount' => MinimumTransferAmount,
       'toAddress' => ToAddress
     }.
