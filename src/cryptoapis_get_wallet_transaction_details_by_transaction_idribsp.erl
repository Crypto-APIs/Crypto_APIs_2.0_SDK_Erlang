-module(cryptoapis_get_wallet_transaction_details_by_transaction_idribsp).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_transaction_details_by_transaction_idribsp/0]).

-type cryptoapis_get_wallet_transaction_details_by_transaction_idribsp() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_get_wallet_transaction_details_by_transaction_idribsp_gas_price:cryptoapis_get_wallet_transaction_details_by_transaction_idribsp_gas_price(),
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
