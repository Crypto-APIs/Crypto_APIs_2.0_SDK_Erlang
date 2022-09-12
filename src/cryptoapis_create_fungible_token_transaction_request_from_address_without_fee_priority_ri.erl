-module(cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ri).

-export([encode/1]).

-export_type([cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ri/0]).

-type cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ri() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'note' => binary(),
       'recipient' := list(),
       'sender' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender(),
       'tokenTypeSpecificData' := cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ris:cryptoapis_create_fungible_token_transaction_request_from_address_without_fee_priority_ris(),
       'transactionRequestId' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'note' := Note,
          'recipient' := Recipient,
          'sender' := Sender,
          'tokenTypeSpecificData' := TokenTypeSpecificData,
          'transactionRequestId' := TransactionRequestId
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'note' => Note,
       'recipient' => Recipient,
       'sender' => Sender,
       'tokenTypeSpecificData' => TokenTypeSpecificData,
       'transactionRequestId' => TransactionRequestId
     }.
