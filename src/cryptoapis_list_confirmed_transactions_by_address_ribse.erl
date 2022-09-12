-module(cryptoapis_list_confirmed_transactions_by_address_ribse).

-export([encode/1]).

-export_type([cryptoapis_list_confirmed_transactions_by_address_ribse/0]).

-type cryptoapis_list_confirmed_transactions_by_address_ribse() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_confirmed_transactions_by_address_ribse_gas_price:cryptoapis_list_confirmed_transactions_by_address_ribse_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'internalTransactionsCount' := integer(),
       'nonce' := integer(),
       'tokenTransfersCount' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'contract' := Contract,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'inputData' := InputData,
          'internalTransactionsCount' := InternalTransactionsCount,
          'nonce' := Nonce,
          'tokenTransfersCount' := TokenTransfersCount,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'contract' => Contract,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'inputData' => InputData,
       'internalTransactionsCount' => InternalTransactionsCount,
       'nonce' => Nonce,
       'tokenTransfersCount' => TokenTransfersCount,
       'transactionStatus' => TransactionStatus
     }.
