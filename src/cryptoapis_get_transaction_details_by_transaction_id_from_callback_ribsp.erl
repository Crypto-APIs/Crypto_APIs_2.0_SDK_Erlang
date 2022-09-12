-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsp).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsp/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribsp() ::
    #{ 'amount' := binary(),
       'contract' := binary(),
       'gas' := binary(),
       'gasPrice' := binary(),
       'gasUsed' := binary(),
       'input' := binary(),
       'nonce' := integer(),
       'recipients' := binary(),
       'senders' := binary(),
       'transactionStatus' := binary(),
       'txid' := binary()
     }.

encode(#{ 'amount' := Amount,
          'contract' := Contract,
          'gas' := Gas,
          'gasPrice' := GasPrice,
          'gasUsed' := GasUsed,
          'input' := Input,
          'nonce' := Nonce,
          'recipients' := Recipients,
          'senders' := Senders,
          'transactionStatus' := TransactionStatus,
          'txid' := Txid
        }) ->
    #{ 'amount' => Amount,
       'contract' => Contract,
       'gas' => Gas,
       'gasPrice' => GasPrice,
       'gasUsed' => GasUsed,
       'input' => Input,
       'nonce' => Nonce,
       'recipients' => Recipients,
       'senders' => Senders,
       'transactionStatus' => TransactionStatus,
       'txid' => Txid
     }.
