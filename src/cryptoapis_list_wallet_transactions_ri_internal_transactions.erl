-module(cryptoapis_list_wallet_transactions_ri_internal_transactions).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_internal_transactions/0]).

-type cryptoapis_list_wallet_transactions_ri_internal_transactions() ::
    #{ 'amount' := binary(),
       'convertedAmount' := binary(),
       'exchangeRateUnit' := binary(),
       'operationId' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'symbol' := binary()
     }.

encode(#{ 'amount' := Amount,
          'convertedAmount' := ConvertedAmount,
          'exchangeRateUnit' := ExchangeRateUnit,
          'operationId' := OperationId,
          'recipient' := Recipient,
          'sender' := Sender,
          'symbol' := Symbol
        }) ->
    #{ 'amount' => Amount,
       'convertedAmount' => ConvertedAmount,
       'exchangeRateUnit' => ExchangeRateUnit,
       'operationId' => OperationId,
       'recipient' => Recipient,
       'sender' => Sender,
       'symbol' => Symbol
     }.
