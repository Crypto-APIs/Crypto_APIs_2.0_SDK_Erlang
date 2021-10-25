-module(cryptoapis_list_transactions_by_block_hash_ribsbsc).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_hash_ribsbsc/0]).

-type cryptoapis_list_transactions_by_block_hash_ribsbsc() ::
    #{ 'contract' => binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_transactions_by_block_hash_ribsbsc_gas_price:cryptoapis_list_transactions_by_block_hash_ribsbsc_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'nonce' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'contract' := Contract,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'inputData' := InputData,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'contract' => Contract,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'inputData' => InputData,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
