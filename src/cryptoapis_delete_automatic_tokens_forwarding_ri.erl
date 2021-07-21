-module(cryptoapis_delete_automatic_tokens_forwarding_ri).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_ri/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_ri() ::
    #{ 'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'createdTimestamp' := integer(),
       'feeAddress' := binary(),
       'feePriority' := binary(),
       'fromAddress' := binary(),
       'minimumTransferAmount' := binary(),
       'referenceId' := binary(),
       'toAddress' := binary(),
       'tokenData' := cryptoapis_delete_automatic_tokens_forwarding_rits:cryptoapis_delete_automatic_tokens_forwarding_rits()
     }.

encode(#{ 'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'createdTimestamp' := CreatedTimestamp,
          'feeAddress' := FeeAddress,
          'feePriority' := FeePriority,
          'fromAddress' := FromAddress,
          'minimumTransferAmount' := MinimumTransferAmount,
          'referenceId' := ReferenceId,
          'toAddress' := ToAddress,
          'tokenData' := TokenData
        }) ->
    #{ 'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'createdTimestamp' => CreatedTimestamp,
       'feeAddress' => FeeAddress,
       'feePriority' => FeePriority,
       'fromAddress' => FromAddress,
       'minimumTransferAmount' => MinimumTransferAmount,
       'referenceId' => ReferenceId,
       'toAddress' => ToAddress,
       'tokenData' => TokenData
     }.
