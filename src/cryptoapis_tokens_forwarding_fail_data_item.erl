-module(cryptoapis_tokens_forwarding_fail_data_item).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_fail_data_item/0]).

-type cryptoapis_tokens_forwarding_fail_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'fromAddress' := binary(),
       'toAddress' := binary(),
       'triggerTransactionId' := binary(),
       'errorCode' := binary(),
       'errorMessage' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'fromAddress' := FromAddress,
          'toAddress' := ToAddress,
          'triggerTransactionId' := TriggerTransactionId,
          'errorCode' := ErrorCode,
          'errorMessage' := ErrorMessage
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'fromAddress' => FromAddress,
       'toAddress' => ToAddress,
       'triggerTransactionId' => TriggerTransactionId,
       'errorCode' => ErrorCode,
       'errorMessage' => ErrorMessage
     }.
