-module(cryptoapis_list_wallet_transactions_ri_fungible_tokens).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_fungible_tokens/0]).

-type cryptoapis_list_wallet_transactions_ri_fungible_tokens() ::
    #{ 'amount' := binary(),
       'convertedAmount' := binary(),
       'exchangeRateUnit' := binary(),
       'name' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'symbol' := binary(),
       'tokenDecimals' := integer(),
       'type' := binary()
     }.

encode(#{ 'amount' := Amount,
          'convertedAmount' := ConvertedAmount,
          'exchangeRateUnit' := ExchangeRateUnit,
          'name' := Name,
          'recipient' := Recipient,
          'sender' := Sender,
          'symbol' := Symbol,
          'tokenDecimals' := TokenDecimals,
          'type' := Type
        }) ->
    #{ 'amount' => Amount,
       'convertedAmount' => ConvertedAmount,
       'exchangeRateUnit' => ExchangeRateUnit,
       'name' => Name,
       'recipient' => Recipient,
       'sender' => Sender,
       'symbol' => Symbol,
       'tokenDecimals' => TokenDecimals,
       'type' => Type
     }.
