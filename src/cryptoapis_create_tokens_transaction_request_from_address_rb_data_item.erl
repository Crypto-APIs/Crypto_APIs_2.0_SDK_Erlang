-module(cryptoapis_create_tokens_transaction_request_from_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_rb_data_item/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_rb_data_item() ::
    #{ 'amount' := binary(),
       'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipientAddress' := binary(),
       'tokenIdentifier' := binary()
     }.

encode(#{ 'amount' := Amount,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipientAddress' := RecipientAddress,
          'tokenIdentifier' := TokenIdentifier
        }) ->
    #{ 'amount' => Amount,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipientAddress' => RecipientAddress,
       'tokenIdentifier' => TokenIdentifier
     }.
