-module(cryptoapis_estimate_gas_limit_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_estimate_gas_limit_rb_data_item/0]).

-type cryptoapis_estimate_gas_limit_rb_data_item() ::
    #{ 'additionalData' => binary(),
       'amount' := binary(),
       'recipient' := binary(),
       'sender' := binary()
     }.

encode(#{ 'additionalData' := AdditionalData,
          'amount' := Amount,
          'recipient' := Recipient,
          'sender' := Sender
        }) ->
    #{ 'additionalData' => AdditionalData,
       'amount' => Amount,
       'recipient' => Recipient,
       'sender' => Sender
     }.
