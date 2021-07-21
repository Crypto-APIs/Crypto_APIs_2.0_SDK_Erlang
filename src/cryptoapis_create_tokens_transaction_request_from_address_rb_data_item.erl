-module(cryptoapis_create_tokens_transaction_request_from_address_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_rb_data_item/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_rb_data_item() ::
    #{ 'amount' := binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'toAddress' := binary(),
       'tokenIdentifier' := binary()
     }.

encode(#{ 'amount' := Amount,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'toAddress' := ToAddress,
          'tokenIdentifier' := TokenIdentifier
        }) ->
    #{ 'amount' => Amount,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'toAddress' => ToAddress,
       'tokenIdentifier' => TokenIdentifier
     }.
