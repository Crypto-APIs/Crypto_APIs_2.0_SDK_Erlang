-module(cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_gas_price:cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_gas_price(),
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
