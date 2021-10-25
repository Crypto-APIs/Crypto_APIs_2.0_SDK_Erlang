-module(cryptoapis_list_wallet_transactions_ri_fee).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_fee/0]).

-type cryptoapis_list_wallet_transactions_ri_fee() ::
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
