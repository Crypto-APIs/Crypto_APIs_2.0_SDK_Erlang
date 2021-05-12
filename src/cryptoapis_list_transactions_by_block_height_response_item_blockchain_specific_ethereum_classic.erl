-module(cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic/0]).

-type cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic_gas_price:cryptoapis_list_transactions_by_block_height_response_item_blockchain_specific_ethereum_classic_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'nonce' := binary()
     }.

encode(#{ 'contract' := Contract,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'inputData' := InputData,
          'nonce' := Nonce
        }) ->
    #{ 'contract' => Contract,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'inputData' => InputData,
       'nonce' => Nonce
     }.
