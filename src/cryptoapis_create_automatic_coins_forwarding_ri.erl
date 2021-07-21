-module(cryptoapis_create_automatic_coins_forwarding_ri).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_ri/0]).

-type cryptoapis_create_automatic_coins_forwarding_ri() ::
    #{ 'callbackUrl' := binary(),
       'confirmationsCount' := integer(),
       'createdTimestamp' := integer(),
       'feePriority' := binary(),
       'fromAddress' := binary(),
       'minimumTransferAmount' := binary(),
       'referenceId' := binary(),
       'toAddress' := binary()
     }.

encode(#{ 'callbackUrl' := CallbackUrl,
          'confirmationsCount' := ConfirmationsCount,
          'createdTimestamp' := CreatedTimestamp,
          'feePriority' := FeePriority,
          'fromAddress' := FromAddress,
          'minimumTransferAmount' := MinimumTransferAmount,
          'referenceId' := ReferenceId,
          'toAddress' := ToAddress
        }) ->
    #{ 'callbackUrl' => CallbackUrl,
       'confirmationsCount' => ConfirmationsCount,
       'createdTimestamp' => CreatedTimestamp,
       'feePriority' => FeePriority,
       'fromAddress' => FromAddress,
       'minimumTransferAmount' => MinimumTransferAmount,
       'referenceId' => ReferenceId,
       'toAddress' => ToAddress
     }.
