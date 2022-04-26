-module(cryptoapis_list_unspent_transaction_outputs_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_unspent_transaction_outputs_by_address_ri/0]).

-type cryptoapis_list_unspent_transaction_outputs_by_address_ri() ::
    #{ 'address' := binary(),
       'amount' := binary(),
       'index' := integer(),
       'isConfirmed' := boolean(),
       'timestamp' := integer(),
       'transactionId' := binary()
     }.

encode(#{ 'address' := Address,
          'amount' := Amount,
          'index' := Index,
          'isConfirmed' := IsConfirmed,
          'timestamp' := Timestamp,
          'transactionId' := TransactionId
        }) ->
    #{ 'address' => Address,
       'amount' => Amount,
       'index' => Index,
       'isConfirmed' => IsConfirmed,
       'timestamp' => Timestamp,
       'transactionId' => TransactionId
     }.
