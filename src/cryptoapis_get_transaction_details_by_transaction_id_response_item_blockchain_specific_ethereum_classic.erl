-module(cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_classic).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_classic/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_classic() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_classic_gas_price:cryptoapis_get_transaction_details_by_transaction_id_response_item_blockchain_specific_ethereum_classic_gas_price(),
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
