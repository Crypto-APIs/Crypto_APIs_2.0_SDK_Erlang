-module(cryptoapis_decode_raw_transaction_hex_rise).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_rise/0]).

-type cryptoapis_decode_raw_transaction_hex_rise() ::
    #{ 'approximateFee' => binary(),
       'approximateMinimumRequiredFee' => binary(),
       'gasLimit' := binary(),
       'gasPaidForData' => binary(),
       'gasPrice' => binary(),
       'inputData' => binary(),
       'maxFeePerGas' => binary(),
       'maxFeePriorityPerGas' => binary(),
       'nonce' := integer(),
       'r' => binary(),
       'recipient' := binary(),
       's' => binary(),
       'sender' := binary(),
       'type' := integer(),
       'v' => binary(),
       'value' => binary()
     }.

encode(#{ 'approximateFee' := ApproximateFee,
          'approximateMinimumRequiredFee' := ApproximateMinimumRequiredFee,
          'gasLimit' := GasLimit,
          'gasPaidForData' := GasPaidForData,
          'gasPrice' := GasPrice,
          'inputData' := InputData,
          'maxFeePerGas' := MaxFeePerGas,
          'maxFeePriorityPerGas' := MaxFeePriorityPerGas,
          'nonce' := Nonce,
          'r' := R,
          'recipient' := Recipient,
          's' := S,
          'sender' := Sender,
          'type' := Type,
          'v' := V,
          'value' := Value
        }) ->
    #{ 'approximateFee' => ApproximateFee,
       'approximateMinimumRequiredFee' => ApproximateMinimumRequiredFee,
       'gasLimit' => GasLimit,
       'gasPaidForData' => GasPaidForData,
       'gasPrice' => GasPrice,
       'inputData' => InputData,
       'maxFeePerGas' => MaxFeePerGas,
       'maxFeePriorityPerGas' => MaxFeePriorityPerGas,
       'nonce' => Nonce,
       'r' => R,
       'recipient' => Recipient,
       's' => S,
       'sender' => Sender,
       'type' => Type,
       'v' => V,
       'value' => Value
     }.
