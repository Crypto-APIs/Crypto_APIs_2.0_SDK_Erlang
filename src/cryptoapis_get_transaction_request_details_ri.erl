-module(cryptoapis_get_transaction_request_details_ri).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_request_details_ri/0]).

-type cryptoapis_get_transaction_request_details_ri() ::
    #{ 'additionalDetails' := binary(),
       'blockchain' := binary(),
       'feePriority' := binary(),
       'network' := binary(),
       'recipients' := list(),
       'totalTransactionAmount' := binary(),
       'transactionId' => binary(),
       'transactionRequestStatus' := binary(),
       'transactionType' := binary(),
       'unit' := binary(),
       'walletId' := binary()
     }.

encode(#{ 'additionalDetails' := AdditionalDetails,
          'blockchain' := Blockchain,
          'feePriority' := FeePriority,
          'network' := Network,
          'recipients' := Recipients,
          'totalTransactionAmount' := TotalTransactionAmount,
          'transactionId' := TransactionId,
          'transactionRequestStatus' := TransactionRequestStatus,
          'transactionType' := TransactionType,
          'unit' := Unit,
          'walletId' := WalletId
        }) ->
    #{ 'additionalDetails' => AdditionalDetails,
       'blockchain' => Blockchain,
       'feePriority' => FeePriority,
       'network' => Network,
       'recipients' => Recipients,
       'totalTransactionAmount' => TotalTransactionAmount,
       'transactionId' => TransactionId,
       'transactionRequestStatus' => TransactionRequestStatus,
       'transactionType' => TransactionType,
       'unit' => Unit,
       'walletId' => WalletId
     }.
