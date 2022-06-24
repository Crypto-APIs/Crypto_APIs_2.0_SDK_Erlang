-module(cryptoapis_list_wallet_transactions_ri_non_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_list_wallet_transactions_ri_non_fungible_tokens_inner/0]).

-type cryptoapis_list_wallet_transactions_ri_non_fungible_tokens_inner() ::
    #{ 'convertedAmount' := binary(),
       'exchangeRateUnit' := binary(),
       'name' := binary(),
       'recipient' := binary(),
       'sender' := binary(),
       'symbol' := binary(),
       'tokenId' := binary(),
       'type' := binary()
     }.

encode(#{ 'convertedAmount' := ConvertedAmount,
          'exchangeRateUnit' := ExchangeRateUnit,
          'name' := Name,
          'recipient' := Recipient,
          'sender' := Sender,
          'symbol' := Symbol,
          'tokenId' := TokenId,
          'type' := Type
        }) ->
    #{ 'convertedAmount' => ConvertedAmount,
       'exchangeRateUnit' => ExchangeRateUnit,
       'name' => Name,
       'recipient' => Recipient,
       'sender' => Sender,
       'symbol' => Symbol,
       'tokenId' => TokenId,
       'type' => Type
     }.
