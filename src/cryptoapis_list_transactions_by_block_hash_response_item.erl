-module(cryptoapis_list_transactions_by_block_hash_response_item).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_response_item/0]).

-type cryptoapis_list_transactions_by_block_hash_response_item() ::
    #{ 'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionId' := binary(),
       'fee' := cryptoapis_list_transactions_by_block_hash_response_item_fee:cryptoapis_list_transactions_by_block_hash_response_item_fee(),
       'blockchainSpecific' := cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific:cryptoapis_list_transactions_by_block_hash_response_item_blockchain_specific()
     }.

encode(#{ 'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'transactionId' := TransactionId,
          'fee' := Fee,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'transactionId' => TransactionId,
       'fee' => Fee,
       'blockchainSpecific' => BlockchainSpecific
     }.
