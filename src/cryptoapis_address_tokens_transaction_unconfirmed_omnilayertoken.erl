-module(cryptoapis_address_tokens_transaction_unconfirmed_omnilayertoken).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_unconfirmed_omnilayertoken/0]).

-type cryptoapis_address_tokens_transaction_unconfirmed_omnilayertoken() ::
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
