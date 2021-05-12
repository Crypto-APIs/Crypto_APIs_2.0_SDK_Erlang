-module(cryptoapis_coins_forwarding_success_data_item).

-export([encode/1]).

-export_type([cryptoapis_coins_forwarding_success_data_item/0]).

-type cryptoapis_coins_forwarding_success_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'fromAddress' := binary(),
       'toAddress' := binary(),
       'forwardedAmount' := binary(),
       'forwardedUnit' := binary(),
       'spentFeesAmount' := binary(),
       'spentFeesUnit' := binary(),
       'triggerTransactionId' := binary(),
       'forwardingTransactionId' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'fromAddress' := FromAddress,
          'toAddress' := ToAddress,
          'forwardedAmount' := ForwardedAmount,
          'forwardedUnit' := ForwardedUnit,
          'spentFeesAmount' := SpentFeesAmount,
          'spentFeesUnit' := SpentFeesUnit,
          'triggerTransactionId' := TriggerTransactionId,
          'forwardingTransactionId' := ForwardingTransactionId
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'fromAddress' => FromAddress,
       'toAddress' => ToAddress,
       'forwardedAmount' => ForwardedAmount,
       'forwardedUnit' => ForwardedUnit,
       'spentFeesAmount' => SpentFeesAmount,
       'spentFeesUnit' => SpentFeesUnit,
       'triggerTransactionId' => TriggerTransactionId,
       'forwardingTransactionId' => ForwardingTransactionId
     }.
