-module(cryptoapis_estimate_transaction_smart_fee_ri).

-export([encode/1]).

-export_type([cryptoapis_estimate_transaction_smart_fee_ri/0]).

-type cryptoapis_estimate_transaction_smart_fee_ri() ::
    #{ 'confirmationTarget' := integer(),
       'feeRate' := binary(),
       'unit' := binary()
     }.

encode(#{ 'confirmationTarget' := ConfirmationTarget,
          'feeRate' := FeeRate,
          'unit' := Unit
        }) ->
    #{ 'confirmationTarget' => ConfirmationTarget,
       'feeRate' => FeeRate,
       'unit' => Unit
     }.
