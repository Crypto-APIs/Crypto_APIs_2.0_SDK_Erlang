-module(cryptoapis_transaction_request_reject_data_item).

-export([encode/1]).

-export_type([cryptoapis_transaction_request_reject_data_item/0]).

-type cryptoapis_transaction_request_reject_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'requiredApproves' := integer(),
       'requiredRejects' := integer(),
       'currentApproves' := integer(),
       'currentRejects' := integer()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'requiredApproves' := RequiredApproves,
          'requiredRejects' := RequiredRejects,
          'currentApproves' := CurrentApproves,
          'currentRejects' := CurrentRejects
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'requiredApproves' => RequiredApproves,
       'requiredRejects' => RequiredRejects,
       'currentApproves' => CurrentApproves,
       'currentRejects' => CurrentRejects
     }.
