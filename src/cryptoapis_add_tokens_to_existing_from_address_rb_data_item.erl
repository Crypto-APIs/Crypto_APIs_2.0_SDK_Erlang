-module(cryptoapis_add_tokens_to_existing_from_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_rb_data_item/0]).

-type cryptoapis_add_tokens_to_existing_from_address_rb_data_item() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'feePriority' := binary(),
       'fromAddress' := binary(),
       'minimumTransferAmount' := binary(),
       'toAddress' := binary(),
       'tokenData' := cryptoapis_add_tokens_to_existing_from_address_rb_token_data:cryptoapis_add_tokens_to_existing_from_address_rb_token_data()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'feePriority' := FeePriority,
          'fromAddress' := FromAddress,
          'minimumTransferAmount' := MinimumTransferAmount,
          'toAddress' := ToAddress,
          'tokenData' := TokenData
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'feePriority' => FeePriority,
       'fromAddress' => FromAddress,
       'minimumTransferAmount' => MinimumTransferAmount,
       'toAddress' => ToAddress,
       'tokenData' => TokenData
     }.
