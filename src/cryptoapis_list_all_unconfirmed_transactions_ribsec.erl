-module(cryptoapis_list_all_unconfirmed_transactions_ribsec).

-export([encode/1]).

-export_type([cryptoapis_list_all_unconfirmed_transactions_ribsec/0]).

-type cryptoapis_list_all_unconfirmed_transactions_ribsec() ::
    #{ 'fee' := cryptoapis_list_all_unconfirmed_transactions_ribsec_fee:cryptoapis_list_all_unconfirmed_transactions_ribsec_fee(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_list_all_unconfirmed_transactions_ribsec_gas_price:cryptoapis_list_all_unconfirmed_transactions_ribsec_gas_price(),
       'nonce' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'fee' := Fee,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'fee' => Fee,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
