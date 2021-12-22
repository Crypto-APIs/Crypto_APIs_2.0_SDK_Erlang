-module(cryptoapis_list_wallet_transactions_ri).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri/0]).

-type cryptoapis_list_wallet_transactions_ri() ::
    #{ 'direction' := binary(),
       'fee' := cryptoapis_list_wallet_transactions_ri_fee:cryptoapis_list_wallet_transactions_ri_fee(),
       'fungibleTokens' => list(),
       'internalTransactions' => list(),
       'nonFungibleTokens' => list(),
       'recipients' := list(),
       'senders' := list(),
       'status' := binary(),
       'timestamp' := integer(),
       'transactionId' := binary(),
       'value' := cryptoapis_list_wallet_transactions_ri_value:cryptoapis_list_wallet_transactions_ri_value()
     }.

encode(#{ 'direction' := Direction,
          'fee' := Fee,
          'fungibleTokens' := FungibleTokens,
          'internalTransactions' := InternalTransactions,
          'nonFungibleTokens' := NonFungibleTokens,
          'recipients' := Recipients,
          'senders' := Senders,
          'status' := Status,
          'timestamp' := Timestamp,
          'transactionId' := TransactionId,
          'value' := Value
        }) ->
    #{ 'direction' => Direction,
       'fee' => Fee,
       'fungibleTokens' => FungibleTokens,
       'internalTransactions' => InternalTransactions,
       'nonFungibleTokens' => NonFungibleTokens,
       'recipients' => Recipients,
       'senders' => Senders,
       'status' => Status,
       'timestamp' => Timestamp,
       'transactionId' => TransactionId,
       'value' => Value
     }.
