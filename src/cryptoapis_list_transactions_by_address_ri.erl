-module(cryptoapis_list_transactions_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_address_ri/0]).

-type cryptoapis_list_transactions_by_address_ri() ::
    #{ 'index' := integer(),
       'minedInBlockHash' => binary(),
       'minedInBlockHeight' => integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionId' := binary(),
       'fee' := cryptoapis_get_transaction_details_by_transaction_idri_fee:cryptoapis_get_transaction_details_by_transaction_idri_fee(),
       'blockchainSpecific' := cryptoapis_list_transactions_by_address_ribs:cryptoapis_list_transactions_by_address_ribs()
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
