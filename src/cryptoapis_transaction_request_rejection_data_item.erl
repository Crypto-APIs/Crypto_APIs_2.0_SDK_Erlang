-module(cryptoapis_transaction_request_rejection_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_rejection_data_item/0]).

-type cryptoapis_transaction_request_rejection_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'requiredApprovals' := integer(),
       'requiredRejections' := integer(),
       'currentApprovals' := integer(),
       'currentRejections' := integer()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'requiredApprovals' := RequiredApprovals,
          'requiredRejections' := RequiredRejections,
          'currentApprovals' := CurrentApprovals,
          'currentRejections' := CurrentRejections
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'requiredApprovals' => RequiredApprovals,
       'requiredRejections' => RequiredRejections,
       'currentApprovals' => CurrentApprovals,
       'currentRejections' => CurrentRejections
     }.
