-module(cryptoapis_decode_raw_transaction_hex_risb22).

-export([encode/1]).

-export_type([cryptoapis_decode_raw_transaction_hex_risb22/0]).

-type cryptoapis_decode_raw_transaction_hex_risb22() ::
    #{ 'approximateFee' => binary(),
       'approximateMinimumRequiredFee' => binary(),
       'gasLimit' := binary(),
       'gasPaidForData' => binary(),
       'gasPrice' => binary(),
       'inputData' => binary(),
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
       'nonce' => Nonce,
       'r' => R,
       'recipient' => Recipient,
       's' => S,
       'sender' => Sender,
       'type' => Type,
       'v' => V,
       'value' => Value
     }.
