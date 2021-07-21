-module(cryptoapis_list_internal_transaction_details_by_transaction_hash_ri).

-export([encode/1]).

-export_type([cryptoapis_list_internal_transaction_details_by_transaction_hash_ri/0]).

-type cryptoapis_list_internal_transaction_details_by_transaction_hash_ri() ::
    #{ 'amount' := binary(),
       'blockHash' := binary(),
       'blockHeight' := integer(),
       'operationID' := binary(),
       'operationType' := binary(),
       'parentHash' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'amount' := Amount,
          'blockHash' := BlockHash,
          'blockHeight' := BlockHeight,
          'operationID' := OperationID,
          'operationType' := OperationType,
          'parentHash' := ParentHash,
          'recipient' := Recipient,
          'sender' := Sender,
          'timestamp' := Timestamp
        }) ->
    #{ 'amount' => Amount,
       'blockHash' => BlockHash,
       'blockHeight' => BlockHeight,
       'operationID' => OperationID,
       'operationType' => OperationType,
       'parentHash' => ParentHash,
       'recipient' => Recipient,
       'sender' => Sender,
       'timestamp' => Timestamp
     }.
