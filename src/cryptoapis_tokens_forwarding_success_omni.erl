-module(cryptoapis_tokens_forwarding_success_omni).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success_omni/0]).

-type cryptoapis_tokens_forwarding_success_omni() ::
    #{ 'name' := binary(),
       'propertyId' := binary(),
       'transactionType' := binary(),
       'createdByTransactionId' := binary(),
       'amount' := binary()
     }.

encode(#{ 'name' := Name,
          'propertyId' := PropertyId,
          'transactionType' := TransactionType,
          'createdByTransactionId' := CreatedByTransactionId,
          'amount' := Amount
        }) ->
    #{ 'name' => Name,
       'propertyId' => PropertyId,
       'transactionType' => TransactionType,
       'createdByTransactionId' => CreatedByTransactionId,
       'amount' => Amount
     }.
