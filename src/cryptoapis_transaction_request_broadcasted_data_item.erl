-module(cryptoapis_transaction_request_broadcasted_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_broadcasted_data_item/0]).

-type cryptoapis_transaction_request_broadcasted_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'requiredApproves' := integer(),
       'requiredRejects' := integer(),
       'currentApproves' := integer(),
       'currentRejects' := integer(),
       'transactionId' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'requiredApproves' := RequiredApproves,
          'requiredRejects' := RequiredRejects,
          'currentApproves' := CurrentApproves,
          'currentRejects' := CurrentRejects,
          'transactionId' := TransactionId
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'requiredApproves' => RequiredApproves,
       'requiredRejects' => RequiredRejects,
       'currentApproves' => CurrentApproves,
       'currentRejects' => CurrentRejects,
       'transactionId' => TransactionId
     }.
