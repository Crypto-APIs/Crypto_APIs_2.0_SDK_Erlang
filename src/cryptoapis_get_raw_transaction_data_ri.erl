-module(cryptoapis_get_raw_transaction_data_ri).

-export([encode/1]).

-export_type([cryptoapis_get_raw_transaction_data_ri/0]).

-type cryptoapis_get_raw_transaction_data_ri() ::
    #{ 'transactionHex' := binary()
     }.

encode(#{ 'transactionHex' := TransactionHex
        }) ->
    #{ 'transactionHex' => TransactionHex
     }.
