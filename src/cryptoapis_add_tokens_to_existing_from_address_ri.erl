-module(cryptoapis_add_tokens_to_existing_from_address_ri).

-export([encode/1]).

-export_type([cryptoapis_add_tokens_to_existing_from_address_ri/0]).

-type cryptoapis_add_tokens_to_existing_from_address_ri() ::
    #{ 'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'createdTimestamp' := integer(),
       'feeAddress' := binary(),
       'feePriority' := binary(),
       'fromAddress' := binary(),
       'minimumTransferAmount' := binary(),
       'referenceId' := binary(),
       'toAddress' := binary(),
       'tokenData' := cryptoapis_add_tokens_to_existing_from_address_rits:cryptoapis_add_tokens_to_existing_from_address_rits()
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
