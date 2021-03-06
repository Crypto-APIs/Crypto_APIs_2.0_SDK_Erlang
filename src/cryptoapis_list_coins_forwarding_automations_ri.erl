-module(cryptoapis_list_coins_forwarding_automations_ri).

-export([encode/1]).

-export_type([cryptoapis_list_coins_forwarding_automations_ri/0]).

-type cryptoapis_list_coins_forwarding_automations_ri() ::
    #{ 'callbackUrl' := binary(),
       'confirmationsCountTrigger' := integer(),
       'createdTimestamp' := integer(),
       'feePriority' := binary(),
       'fromAddress' := binary(),
       'minimumTransferAmount' := binary(),
       'referenceId' := binary(),
       'toAddress' := binary()
     }.

encode(#{ 'callbackUrl' := CallbackUrl,
          'confirmationsCountTrigger' := ConfirmationsCountTrigger,
          'createdTimestamp' := CreatedTimestamp,
          'feePriority' := FeePriority,
          'fromAddress' := FromAddress,
          'minimumTransferAmount' := MinimumTransferAmount,
          'referenceId' := ReferenceId,
          'toAddress' := ToAddress
        }) ->
    #{ 'callbackUrl' => CallbackUrl,
       'confirmationsCountTrigger' => ConfirmationsCountTrigger,
       'createdTimestamp' => CreatedTimestamp,
       'feePriority' => FeePriority,
       'fromAddress' => FromAddress,
       'minimumTransferAmount' => MinimumTransferAmount,
       'referenceId' => ReferenceId,
       'toAddress' => ToAddress
     }.
