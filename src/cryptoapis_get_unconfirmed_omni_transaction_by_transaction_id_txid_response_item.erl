-module(cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response_item).

-export([encode/1]).

-export_type([cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response_item/0]).

-type cryptoapis_get_unconfirmed_omni_transaction_by_transaction_id_txid_response_item() ::
    #{ 'amount' := binary(),
       'divisible' := boolean(),
       'mined' := boolean(),
       'propertyId' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'sent' := boolean(),
       'timestamp' := integer(),
       'transactionId' := binary(),
       'type' := binary(),
       'typeInt' := integer(),
       'version' := integer(),
       'fee' := cryptoapis_list_unconfirmed_omni_transactions_by_address_response_item_fee:cryptoapis_list_unconfirmed_omni_transactions_by_address_response_item_fee()
     }.

encode(#{ 'amount' := Amount,
          'divisible' := Divisible,
          'mined' := Mined,
          'propertyId' := PropertyId,
          'recipients' := Recipients,
          'senders' := Senders,
          'sent' := Sent,
          'timestamp' := Timestamp,
          'transactionId' := TransactionId,
          'type' := Type,
          'typeInt' := TypeInt,
          'version' := Version,
          'fee' := Fee
        }) ->
    #{ 'amount' => Amount,
       'divisible' => Divisible,
       'mined' => Mined,
       'propertyId' => PropertyId,
       'recipients' => Recipients,
       'senders' => Senders,
       'sent' => Sent,
       'timestamp' => Timestamp,
       'transactionId' => TransactionId,
       'type' => Type,
       'typeInt' => TypeInt,
       'version' => Version,
       'fee' => Fee
     }.
