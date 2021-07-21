-module(cryptoapis_get_transaction_details_by_transaction_idribs).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_idribs/0]).

-type cryptoapis_get_transaction_details_by_transaction_idribs() ::
    #{ 'locktime' := integer(),
       'size' := integer(),
       'vSize' := integer(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list(),
       'vsize' := integer(),
       'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_get_transaction_details_by_transaction_idribsec_gas_price:cryptoapis_get_transaction_details_by_transaction_idribsec_gas_price(),
       'gasUsed' := binary(),
       'inputData' := binary(),
       'nonce' := binary(),
       'transactionStatus' := binary()
     }.

encode(#{ 'locktime' := Locktime,
          'size' := Size,
          'vSize' := VSize,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout,
          'vsize' := Vsize,
          'contract' := Contract,
          'gasLimit' := GasLimit,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'inputData' := InputData,
          'nonce' := Nonce,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'locktime' => Locktime,
       'size' => Size,
       'vSize' => VSize,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout,
       'vsize' => Vsize,
       'contract' => Contract,
       'gasLimit' => GasLimit,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'inputData' => InputData,
       'nonce' => Nonce,
       'transactionStatus' => TransactionStatus
     }.
