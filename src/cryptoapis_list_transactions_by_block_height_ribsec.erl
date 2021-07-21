-module(cryptoapis_list_transactions_by_block_height_ribsec).

-export([encode/1]).

-export_type([cryptoapis_list_transactions_by_block_height_ribsec/0]).

-type cryptoapis_list_transactions_by_block_height_ribsec() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_transactions_by_block_height_ribsec_gas_price:cryptoapis_list_transactions_by_block_height_ribsec_gas_price(),
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
