-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz2).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz2/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz2() ::
    #{ 'gasLimit' := integer(),
       'gasPrice' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz2_gas_price:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsz2_gas_price(),
       'gasUsed' := integer(),
       'nonce' := integer(),
       'transactionStatus' := binary()
     }.

encode(#{ 'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
