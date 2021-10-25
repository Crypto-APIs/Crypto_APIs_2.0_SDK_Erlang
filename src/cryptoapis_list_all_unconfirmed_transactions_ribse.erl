-module(cryptoapis_list_all_unconfirmed_transactions_ribse).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribse/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribse() ::
    #{ 'fee' := cryptoapis_list_all_unconfirmed_transactions_ribse_fee:cryptoapis_list_all_unconfirmed_transactions_ribse_fee(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_all_unconfirmed_transactions_ribse_gas_price:cryptoapis_list_all_unconfirmed_transactions_ribse_gas_price(),
       'inputData' := binary(),
       'nonce' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'fee' := Fee,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'inputData' := InputData,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'fee' => Fee,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'inputData' => InputData,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
