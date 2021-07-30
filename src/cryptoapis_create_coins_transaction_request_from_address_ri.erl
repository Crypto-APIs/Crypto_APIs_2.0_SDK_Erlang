-module(cryptoapis_create_coins_transaction_request_from_address_ri).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_address_ri/0]).

-type cryptoapis_create_coins_transaction_request_from_address_ri() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'recipients' := list(),
       'senders' := cryptoapis_create_coins_transaction_request_from_address_ri_senders:cryptoapis_create_coins_transaction_request_from_address_ri_senders(),
       'transactionRequestStatus' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'recipients' := Recipients,
          'senders' := Senders,
          'transactionRequestStatus' := TransactionRequestStatus
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'recipients' => Recipients,
       'senders' => Senders,
       'transactionRequestStatus' => TransactionRequestStatus
     }.
