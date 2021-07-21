-module(cryptoapis_get_zilliqa_transaction_details_by_transaction_idri).

-export([encode/1]).

-export_type([cryptoapis_get_zilliqa_transaction_details_by_transaction_idri/0]).

-type cryptoapis_get_zilliqa_transaction_details_by_transaction_idri() ::
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
       'transactionIndex' => TransactionIndex,
       'transactionStatus' => TransactionStatus
     }.
