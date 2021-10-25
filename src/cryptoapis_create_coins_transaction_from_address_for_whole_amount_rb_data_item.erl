-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data_item/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_rb_data_item() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipientAddress' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipientAddress' := RecipientAddress
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipientAddress' => RecipientAddress
     }.
