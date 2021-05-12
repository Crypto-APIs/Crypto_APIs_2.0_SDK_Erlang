-module(cryptoapis_list_omni_transactions_by_block_height_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_omni_transactions_by_block_height_response_item/0]).

-type cryptoapis_list_omni_transactions_by_block_height_response_item() ::
    #{ 'amount' := binary(),
       'divisible' := boolean(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'positionInBlock' := integer(),
       'propertyId' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionId' := binary(),
       'type' := binary(),
       'typeInt' := integer(),
       'valid' := boolean(),
       'version' := integer(),
       'fee' := cryptoapis_list_omni_transactions_by_block_height_response_item_fee:cryptoapis_list_omni_transactions_by_block_height_response_item_fee()
     }.

encode(#{ 'amount' := Amount,
          'divisible' := Divisible,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'positionInBlock' := PositionInBlock,
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
       'positionInBlock' => PositionInBlock,
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
