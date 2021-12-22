-module(cryptoapis_list_wallet_transactions_ri_value).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_value/0]).

-type cryptoapis_list_wallet_transactions_ri_value() ::
    #{ 'amount' := binary(),
       'convertedAmount' := binary(),
       'exchangeRateUnit' := binary(),
       'symbol' := binary()
     }.

encode(#{ 'amount' := Amount,
          'convertedAmount' := ConvertedAmount,
          'exchangeRateUnit' := ExchangeRateUnit,
          'symbol' := Symbol
        }) ->
    #{ 'amount' => Amount,
       'convertedAmount' => ConvertedAmount,
       'exchangeRateUnit' => ExchangeRateUnit,
       'symbol' => Symbol
     }.
