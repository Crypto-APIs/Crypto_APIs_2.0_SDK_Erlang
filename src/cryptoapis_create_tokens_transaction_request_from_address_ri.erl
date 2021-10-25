-module(cryptoapis_create_tokens_transaction_request_from_address_ri).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri() ::
    #{ 'callbackSecretKey' := binary(),
       'callbackUrl' := binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipients' := list(),
       'senders' := cryptoapis_create_tokens_transaction_request_from_address_ri_senders:cryptoapis_create_tokens_transaction_request_from_address_ri_senders(),
       'tokenTypeSpecificData' := cryptoapis_create_tokens_transaction_request_from_address_ris:cryptoapis_create_tokens_transaction_request_from_address_ris(),
       'transactionRequestId' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipients' := Recipients,
          'senders' := Senders,
          'tokenTypeSpecificData' := TokenTypeSpecificData,
          'transactionRequestId' := TransactionRequestId
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipients' => Recipients,
       'senders' => Senders,
       'tokenTypeSpecificData' => TokenTypeSpecificData,
       'transactionRequestId' => TransactionRequestId
     }.
