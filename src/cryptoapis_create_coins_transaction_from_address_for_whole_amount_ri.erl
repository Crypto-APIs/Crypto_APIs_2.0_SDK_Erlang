-module(cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri/0]).

-type cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipients' := list(),
       'senders' := cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_senders:cryptoapis_create_coins_transaction_from_address_for_whole_amount_ri_senders(),
       'transactionRequestId' := binary(),
       'transactionRequestStatus' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipients' := Recipients,
          'senders' := Senders,
          'transactionRequestId' := TransactionRequestId,
          'transactionRequestStatus' := TransactionRequestStatus
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipients' => Recipients,
       'senders' => Senders,
       'transactionRequestId' => TransactionRequestId,
       'transactionRequestStatus' => TransactionRequestStatus
     }.
