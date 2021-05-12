-module(cryptoapis_tokens_forwarding_success_data_item).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success_data_item/0]).

-type cryptoapis_tokens_forwarding_success_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'fromAddress' := binary(),
       'toAddress' := binary(),
       'spentFeesAmount' := binary(),
       'spentFeesUnit' := binary(),
       'triggerTransactionId' := binary(),
       'forwardingTransactionId' := binary(),
       'tokenType' := binary(),
       'token' := cryptoapis_tokens_forwarding_success_token:cryptoapis_tokens_forwarding_success_token()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'fromAddress' := FromAddress,
          'toAddress' := ToAddress,
          'spentFeesAmount' := SpentFeesAmount,
          'spentFeesUnit' := SpentFeesUnit,
          'triggerTransactionId' := TriggerTransactionId,
          'forwardingTransactionId' := ForwardingTransactionId,
          'tokenType' := TokenType,
          'token' := Token
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'fromAddress' => FromAddress,
       'toAddress' => ToAddress,
       'spentFeesAmount' => SpentFeesAmount,
       'spentFeesUnit' => SpentFeesUnit,
       'triggerTransactionId' => TriggerTransactionId,
       'forwardingTransactionId' => ForwardingTransactionId,
       'tokenType' => TokenType,
       'token' => Token
     }.
