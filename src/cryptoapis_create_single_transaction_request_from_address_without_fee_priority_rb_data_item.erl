-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data_item/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_rb_data_item() ::
    #{ 'amount' := binary(),
       'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'note' => binary(),
       'recipientAddress' := binary()
     }.

encode(#{ 'amount' := Amount,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'note' := Note,
          'recipientAddress' := RecipientAddress
        }) ->
    #{ 'amount' => Amount,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'note' => Note,
       'recipientAddress' => RecipientAddress
     }.
