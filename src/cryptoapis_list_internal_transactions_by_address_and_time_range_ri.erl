-module(cryptoapis_list_internal_transactions_by_address_and_time_range_ri).

-export([encode/1]).

-export_type([cryptoapis_list_internal_transactions_by_address_and_time_range_ri/0]).

-type cryptoapis_list_internal_transactions_by_address_and_time_range_ri() ::
    #{ 'amount' := binary(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'operationID' := binary(),
       'operationType' := binary(),
       'parentHash' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'timestamp' := integer()
     }.

encode(#{ 'amount' := Amount,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'operationID' := OperationID,
          'operationType' := OperationType,
          'parentHash' := ParentHash,
          'recipient' := Recipient,
          'sender' := Sender,
          'timestamp' := Timestamp
        }) ->
    #{ 'amount' => Amount,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'operationID' => OperationID,
       'operationType' => OperationType,
       'parentHash' => ParentHash,
       'recipient' => Recipient,
       'sender' => Sender,
       'timestamp' => Timestamp
     }.
