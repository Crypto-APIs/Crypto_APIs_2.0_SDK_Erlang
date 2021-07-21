-module(cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_ri).

-export([encode/1]).

-export_type([cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_ri/0]).

-type cryptoapis_get_internal_transaction_by_transaction_hash_and_operation_id_ri() ::
    #{ 'amount' := binary(),
       'blockHash' := binary(),
       'blockHeight' := integer(),
       'operationType' := binary(),
       'parentHash' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'amount' := Amount,
          'blockHash' := BlockHash,
          'blockHeight' := BlockHeight,
          'operationType' := OperationType,
          'parentHash' := ParentHash,
          'recipient' := Recipient,
          'sender' := Sender,
          'timestamp' := Timestamp
        }) ->
    #{ 'amount' => Amount,
       'blockHash' => BlockHash,
       'blockHeight' => BlockHeight,
       'operationType' => OperationType,
       'parentHash' => ParentHash,
       'recipient' => Recipient,
       'sender' => Sender,
       'timestamp' => Timestamp
     }.
