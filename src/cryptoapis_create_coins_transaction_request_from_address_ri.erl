-module(cryptoapis_create_coins_transaction_request_from_address_ri).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_address_ri/0]).

-type cryptoapis_create_coins_transaction_request_from_address_ri() ::
    #{ 'addressTag' => integer(),
       'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'classicAddress' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipients' := list(),
       'senders' := cryptoapis_create_coins_transaction_request_from_address_ri_senders:cryptoapis_create_coins_transaction_request_from_address_ri_senders(),
       'transactionRequestId' := binary(),
       'transactionRequestStatus' := binary()
     }.

encode(#{ 'addressTag' := AddressTag,
          'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'classicAddress' := ClassicAddress,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipients' := Recipients,
          'senders' := Senders,
          'transactionRequestId' := TransactionRequestId,
          'transactionRequestStatus' := TransactionRequestStatus
        }) ->
    #{ 'addressTag' => AddressTag,
       'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'classicAddress' => ClassicAddress,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipients' => Recipients,
       'senders' => Senders,
       'transactionRequestId' => TransactionRequestId,
       'transactionRequestStatus' => TransactionRequestStatus
     }.
