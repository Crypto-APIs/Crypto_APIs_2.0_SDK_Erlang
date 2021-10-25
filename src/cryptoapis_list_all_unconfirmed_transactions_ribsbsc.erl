-module(cryptoapis_list_all_unconfirmed_transactions_ribsbsc).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribsbsc/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribsbsc() ::
    #{ 'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_confirmed_transactions_by_address_ribsbsc_gas_price:cryptoapis_list_confirmed_transactions_by_address_ribsbsc_gas_price(),
       'inputData' := binary(),
       'nonce' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'inputData' := InputData,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'inputData' => InputData,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
