-module(cryptoapis_create_coins_transaction_request_from_wallet_ri).

-export([encode/1]).

-export_type([cryptoapis_create_coins_transaction_request_from_wallet_ri/0]).

-type cryptoapis_create_coins_transaction_request_from_wallet_ri() ::
    #{ 'callbackSecretKey' => binary(),
       'callbackUrl' => binary(),
       'feePriority' := binary(),
       'note' => binary(),
       'recipients' := list(),
       'totalTransactionAmount' := binary(),
       'transactionRequestId' := binary(),
       'transactionRequestStatus' := binary()
     }.

encode(#{ 'callbackSecretKey' := CallbackSecretKey,
          'callbackUrl' := CallbackUrl,
          'feePriority' := FeePriority,
          'note' := Note,
          'recipients' := Recipients,
          'totalTransactionAmount' := TotalTransactionAmount,
          'transactionRequestId' := TransactionRequestId,
          'transactionRequestStatus' := TransactionRequestStatus
        }) ->
    #{ 'callbackSecretKey' => CallbackSecretKey,
       'callbackUrl' => CallbackUrl,
       'feePriority' => FeePriority,
       'note' => Note,
       'recipients' => Recipients,
       'totalTransactionAmount' => TotalTransactionAmount,
       'transactionRequestId' => TransactionRequestId,
       'transactionRequestStatus' => TransactionRequestStatus
     }.
