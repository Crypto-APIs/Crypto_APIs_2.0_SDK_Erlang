-module(cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific/0]).

-type cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'vSize' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list(),
       'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic_gas_price:cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'nonce' := binary(),
       'transactionStatus' := binary(),
       'vsize' := integer()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'vSize' := VSize,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout,
          'contract' := Contract,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'inputData' := InputData,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus,
          'vsize' := Vsize
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'vSize' => VSize,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout,
       'contract' => Contract,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'inputData' => InputData,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus,
       'vsize' => Vsize
     }.
