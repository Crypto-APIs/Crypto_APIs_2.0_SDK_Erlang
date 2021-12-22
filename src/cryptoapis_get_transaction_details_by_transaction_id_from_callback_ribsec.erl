-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsec).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsec/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsec() ::
    #{ 'contract' := binary(),
       'gasLimit' := binary(),
       'gasPrice' := cryptoapis_get_transaction_details_by_transaction_idribsec_gas_price:cryptoapis_get_transaction_details_by_transaction_idribsec_gas_price(),
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
