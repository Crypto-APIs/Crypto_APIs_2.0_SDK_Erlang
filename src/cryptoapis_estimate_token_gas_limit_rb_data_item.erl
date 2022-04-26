-module(cryptoapis_estimate_token_gas_limit_rb_data_item).

-export([encode/1]).

-export_type([cryptoapis_estimate_token_gas_limit_rb_data_item/0]).

-type cryptoapis_estimate_token_gas_limit_rb_data_item() ::
    #{ 'amount' := binary(),
       'contract' := binary(),
       'contractType' := binary(),
       'recipient' := binary(),
       'sender' := binary()
     }.

encode(#{ 'amount' := Amount,
          'contract' := Contract,
          'contractType' := ContractType,
          'recipient' := Recipient,
          'sender' := Sender
        }) ->
    #{ 'amount' => Amount,
       'contract' => Contract,
       'contractType' => ContractType,
       'recipient' => Recipient,
       'sender' => Sender
     }.
