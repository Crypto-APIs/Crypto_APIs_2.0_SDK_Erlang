-module(cryptoapis_broadcast_transaction_fail_data_item).

-export([encode/1]).

-export_type([cryptoapis_broadcast_transaction_fail_data_item/0]).

-type cryptoapis_broadcast_transaction_fail_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'transactionId' := binary(),
       'errorMessage' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'transactionId' := TransactionId,
          'errorMessage' := ErrorMessage
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'transactionId' => TransactionId,
       'errorMessage' => ErrorMessage
     }.
