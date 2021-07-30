-module(cryptoapis_broadcast_locally_signed_transaction_ri).

-export([encode/1]).

-export_type([cryptoapis_broadcast_locally_signed_transaction_ri/0]).

-type cryptoapis_broadcast_locally_signed_transaction_ri() ::
    #{ 'transactionId' := binary()
     }.

encode(#{ 'transactionId' := TransactionId
        }) ->
    #{ 'transactionId' => TransactionId
     }.
