-module(cryptoapis_get_wallet_asset_details_ri_non_fungible_tokens_inner).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_asset_details_ri_non_fungible_tokens_inner/0]).

-type cryptoapis_get_wallet_asset_details_ri_non_fungible_tokens_inner() ::
    #{ 'identifier' := binary(),
       'symbol' := binary(),
       'tokenId' := binary(),
       'type' := binary()
     }.

encode(#{ 'identifier' := Identifier,
          'symbol' := Symbol,
          'tokenId' := TokenId,
          'type' := Type
        }) ->
    #{ 'identifier' => Identifier,
       'symbol' => Symbol,
       'tokenId' => TokenId,
       'type' => Type
     }.
