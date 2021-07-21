-module(cryptoapis_create_automatic_tokens_forwarding_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_tokens_forwarding_rb_data_item/0]).

-type cryptoapis_create_automatic_tokens_forwarding_rb_data_item() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' := binary(),
       'feePriority' := binary(),
       'minimumTransferAmount' := binary(),
       'toAddress' := binary(),
       'tokenData' := cryptoapis_create_automatic_tokens_forwarding_rb_token_data:cryptoapis_create_automatic_tokens_forwarding_rb_token_data()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'feePriority' := FeePriority,
          'minimumTransferAmount' := MinimumTransferAmount,
          'toAddress' := ToAddress,
          'tokenData' := TokenData
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'feePriority' => FeePriority,
       'minimumTransferAmount' => MinimumTransferAmount,
       'toAddress' => ToAddress,
       'tokenData' => TokenData
     }.
