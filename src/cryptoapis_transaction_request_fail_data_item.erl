-module(cryptoapis_transaction_request_fail_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_fail_data_item/0]).

-type cryptoapis_transaction_request_fail_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'requiredApprovals' := integer(),
       'requiredRejections' := integer(),
       'currentApprovals' := integer(),
       'currentRejections' := integer(),
       'errorMessage' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'requiredApprovals' := RequiredApprovals,
          'requiredRejections' := RequiredRejections,
          'currentApprovals' := CurrentApprovals,
          'currentRejections' := CurrentRejections,
          'errorMessage' := ErrorMessage
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'requiredApprovals' => RequiredApprovals,
       'requiredRejections' => RequiredRejections,
       'currentApprovals' => CurrentApprovals,
       'currentRejections' => CurrentRejections,
       'errorMessage' => ErrorMessage
     }.
