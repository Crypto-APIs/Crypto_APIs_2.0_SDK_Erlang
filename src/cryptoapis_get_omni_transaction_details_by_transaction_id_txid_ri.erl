-module(cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri).

-export([encode/1]).

-export_type([cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri/0]).

-type cryptoapis_get_omni_transaction_details_by_transaction_id_txid_ri() ::
    #{ 'amount' := binary(),
       'divisible' := boolean(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'propertyId' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionId' := binary(),
       'type' := binary(),
       'typeInt' := integer(),
       'valid' := boolean(),
       'version' := integer(),
       'fee' := cryptoapis_list_unconfirmed_omni_transactions_by_address_ri_fee:cryptoapis_list_unconfirmed_omni_transactions_by_address_ri_fee()
     }.

encode(#{ 'amount' := Amount,
          'divisible' := Divisible,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'propertyId' := PropertyId,
          'recipients' := Recipients,
          'senders' := Senders,
          'timestamp' := Timestamp,
          'transactionId' := TransactionId,
          'type' := Type,
          'typeInt' := TypeInt,
          'valid' := Valid,
          'version' := Version,
          'fee' := Fee
        }) ->
    #{ 'amount' => Amount,
       'divisible' => Divisible,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'propertyId' => PropertyId,
       'recipients' => Recipients,
       'senders' => Senders,
       'timestamp' => Timestamp,
       'transactionId' => TransactionId,
       'type' => Type,
       'typeInt' => TypeInt,
       'valid' => Valid,
       'version' => Version,
       'fee' => Fee
     }.
