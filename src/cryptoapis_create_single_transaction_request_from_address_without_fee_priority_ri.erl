-module(cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri).

-export([encode/1]).

-export_type([cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri/0]).

-type cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'classicAddress' => binary(),
       'note' => binary(),
       'recipient' := list(),
       'sender' := cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_sender(),
       'transactionRequestId' := binary(),
       'transactionRequestStatus' := binary(),
       'totalAmount' => cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_total_amount:cryptoapis_create_single_transaction_request_from_address_without_fee_priority_ri_total_amount()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'classicAddress' := ClassicAddress,
          'note' := Note,
          'recipient' := Recipient,
          'sender' := Sender,
          'transactionRequestId' := TransactionRequestId,
          'transactionRequestStatus' := TransactionRequestStatus,
          'totalAmount' := TotalAmount
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'classicAddress' => ClassicAddress,
       'note' => Note,
       'recipient' => Recipient,
       'sender' => Sender,
       'transactionRequestId' => TransactionRequestId,
       'transactionRequestStatus' => TransactionRequestStatus,
       'totalAmount' => TotalAmount
     }.
