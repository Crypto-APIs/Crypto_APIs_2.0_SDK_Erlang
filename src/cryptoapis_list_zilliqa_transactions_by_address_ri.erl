-module(cryptoapis_list_zilliqa_transactions_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_zilliqa_transactions_by_address_ri/0]).

-type cryptoapis_list_zilliqa_transactions_by_address_ri() ::
    #{ 'fee' := cryptoapis_get_zilliqa_transaction_details_by_transaction_idri_fee:cryptoapis_get_zilliqa_transaction_details_by_transaction_idri_fee(),
       'gasLimit' := integer(),
       'gasPrice' := integer(),
       'gasUsed' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'nonce' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionIndex' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'fee' := Fee,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'nonce' := Nonce,
          'recipients' := Recipients,
          'senders' := Senders,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'transactionIndex' := TransactionIndex,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'fee' => Fee,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'nonce' => Nonce,
       'recipients' => Recipients,
       'senders' => Senders,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'transactionIndex' => TransactionIndex,
       'transactionStatus' => TransactionStatus
     }.
