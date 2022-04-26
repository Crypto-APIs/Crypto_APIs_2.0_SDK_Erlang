-module(cryptoapis_estimate_transaction_smart_fee_e400).

-export([encode/1]).

-export_type([cryptoapis_estimate_transaction_smart_fee_e400/0]).

-type cryptoapis_estimate_transaction_smart_fee_e400() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
