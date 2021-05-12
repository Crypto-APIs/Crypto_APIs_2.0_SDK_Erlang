-module(cryptoapis_list_transactions_by_address_response_item_blockchain_specific_ethereum).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_address_response_item_blockchain_specific_ethereum/0]).

-type cryptoapis_list_transactions_by_address_response_item_blockchain_specific_ethereum() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_transactions_by_address_response_item_blockchain_specific_ethereum_gas_price:cryptoapis_list_transactions_by_address_response_item_blockchain_specific_ethereum_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'nonce' := integer()
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
