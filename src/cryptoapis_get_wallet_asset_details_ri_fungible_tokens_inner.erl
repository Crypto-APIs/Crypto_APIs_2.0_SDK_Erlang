-module(cryptoapis_get_wallet_asset_details_ri_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_asset_details_ri_fungible_tokens_inner/0]).

-type cryptoapis_get_wallet_asset_details_ri_fungible_tokens_inner() ::
    #{ 'confirmedAmount' := binary(),
       'identifier' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'confirmedAmount' := ConfirmedAmount,
          'identifier' := Identifier,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'confirmedAmount' => ConfirmedAmount,
       'identifier' => Identifier,
       'symbol' => Symbol,
       'type' => Type
     }.
