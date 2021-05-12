-module(cryptoapis_address_tokens_transaction_confirmed_each_confirmation_token).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_each_confirmation_token/0]).

-type cryptoapis_address_tokens_transaction_confirmed_each_confirmation_token() ::
    #{ 'name' := binary(),
       'symbol' := binary(),
       'decimals' => binary(),
       'amount' := binary(),
       'contractAddress' := binary(),
       'tokenId' := binary(),
       'propertyId' := binary(),
       'transactionType' := binary(),
       'createdByTransactionId' := binary()
     }.

encode(#{ 'name' := Name,
          'symbol' := Symbol,
          'decimals' := Decimals,
          'amount' := Amount,
          'contractAddress' := ContractAddress,
          'tokenId' := TokenId,
          'propertyId' := PropertyId,
          'transactionType' := TransactionType,
          'createdByTransactionId' := CreatedByTransactionId
        }) ->
    #{ 'name' => Name,
       'symbol' => Symbol,
       'decimals' => Decimals,
       'amount' => Amount,
       'contractAddress' => ContractAddress,
       'tokenId' => TokenId,
       'propertyId' => PropertyId,
       'transactionType' => TransactionType,
       'createdByTransactionId' => CreatedByTransactionId
     }.
