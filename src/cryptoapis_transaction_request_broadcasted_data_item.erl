-module(cryptoapis_transaction_request_broadcasted_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_broadcasted_data_item/0]).

-type cryptoapis_transaction_request_broadcasted_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'requiredApprovals' := integer(),
       'requiredRejections' := integer(),
       'currentApprovals' := integer(),
       'currentRejections' := integer(),
       'transactionId' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'requiredApprovals' := RequiredApprovals,
          'requiredRejections' := RequiredRejections,
          'currentApprovals' := CurrentApprovals,
          'currentRejections' := CurrentRejections,
          'transactionId' := TransactionId
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'requiredApprovals' => RequiredApprovals,
       'requiredRejections' => RequiredRejections,
       'currentApprovals' => CurrentApprovals,
       'currentRejections' => CurrentRejections,
       'transactionId' => TransactionId
     }.
